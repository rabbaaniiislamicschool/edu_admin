import 'package:edu_admin/core/utils/safe_request.dart';
import 'package:edu_admin/features/auth/data/remote/models/user_model.dart';
import 'package:edu_admin/features/employees/data/remote/models/user_employee_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../../core/error/failure.dart';
import '../models/employee_model.dart';

abstract class EmployeeRemoteDataSource {
  Future<Either<Failure, List<EmployeeModel>>> createUserEmployees(
    List<UserEmployeeModel> userEmployees,
    String defaultPassword,
  );

  Future<Either<Failure, List<EmployeeModel>>> createUserEmployee(
    UserEmployeeModel userEmployee,
    String defaultPassword,
  );

  Future<Either<Failure, void>> updateUserEmployee(
    UserEmployeeModel userEmployee,
    String? resetPassword,
  );

  Future<Either<Failure, void>> deleteEmployee(String employeeId);

  Future<Either<Failure, EmployeeModel>> fetchEmployee(String employeeId);

  Future<Either<Failure, List<EmployeeModel>>> fetchAllEmployees();
}

@LazySingleton(as: EmployeeRemoteDataSource)
class EmployeeRemoteDataSourceImpl implements EmployeeRemoteDataSource {
  final SupabaseClient _client;

  EmployeeRemoteDataSourceImpl(this._client);

  @override
  Future<Either<Failure, void>> deleteEmployee(String employeeId) {
    return safeRequest(() async {
      await _client.from('employees').delete().eq('employee_id', employeeId);
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, List<EmployeeModel>>> fetchAllEmployees() {
    return safeRequest(() async {
      final result = await _client
          .from('employees')
          .select('*, users(*, schools(*)), divisions(*)')
          .withConverter((data) => data.map(EmployeeModel.fromJson).toList());
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, EmployeeModel>> fetchEmployee(String employeeId) {
    return safeRequest(() async {
      final result = await _client
          .from('employees')
          .select('*, users(*, schools(*)), divisions(*)')
          .eq('employee_id', employeeId)
          .limit(1)
          .single()
          .withConverter(EmployeeModel.fromJson);
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, void>> updateUserEmployee(
    UserEmployeeModel userEmployee,
    String? resetPassword,
  ) {
    return safeRequest(() async {
      String? imageUrl = await _uploadUserImage(
        userEmployee.user,
        isUpdate: true,
      );
      final updatedUser = userEmployee.user.copyWith(
        imageUrl: imageUrl ?? userEmployee.user.imageUrl,
      );
      await _client.rpc(
        'upsert_users_and_employees',
        params: {
          'data': [userEmployee.copyWith(user: updatedUser).toJson()],
          'password': resetPassword,
        },
      );
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, List<EmployeeModel>>> createUserEmployees(
    List<UserEmployeeModel> userEmployees,
    String defaultPassword,
  ) {
    return safeRequest(() async {
      final result = await _client
          .rpc(
            'upsert_users_and_employees',
            params: {
              'data': userEmployees.map((e) => e.toJson()).toList(),
              'password': defaultPassword,
            },
          )
          .select('*')
          .withConverter((data) {
            return data.map(EmployeeModel.fromJson).toList();
          });
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, List<EmployeeModel>>> createUserEmployee(
    UserEmployeeModel userEmployee,
    String defaultPassword,
  ) {
    return safeRequest(() async {
      String? imageUrl = await _uploadUserImage(userEmployee.user);
      final updatedUser = userEmployee.user.copyWith(imageUrl: imageUrl);
      final result = await _client
          .rpc(
            'upsert_users_and_employees',
            params: {
              'data': [userEmployee.copyWith(user: updatedUser).toJson()],
              'password': defaultPassword,
            },
          )
          .select('*')
          .withConverter((data) {
            return data.map(EmployeeModel.fromJson).toList();
          });
      return Right(result);
    });
  }


  Future<String?> _uploadUserImage(
    UserModel user, {
    bool isUpdate = false,
  }) async {
    if (user.uploadStorage == null) return null;
    final bucket = 'users';
    final fileName = user.uploadStorage?.fileName;
    final path = 'images/$fileName';

    if (isUpdate && user.imageUrl != null) {
      final path =
          user.imageUrl!.split('/storage/v1/object/public/$bucket/').last;
      await _client.storage.from(bucket).remove([path]);
    }

    await _client.storage
        .from(bucket)
        .uploadBinary(path, user.uploadStorage!.bytes);
    final publicUrl = _client.storage.from(bucket).getPublicUrl(path);
    return publicUrl;
  }
}
