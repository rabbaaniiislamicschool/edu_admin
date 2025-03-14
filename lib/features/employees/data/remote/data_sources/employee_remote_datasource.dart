import 'package:edu_admin/core/utils/safe_request.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../../core/error/failure.dart';
import '../models/employee_model.dart';
import '../models/import_employee_model.dart';

abstract class EmployeeRemoteDataSource {
  Future<Either<Failure, void>> createEmployee(EmployeeModel employee);

  Future<Either<Failure, List<EmployeeModel>>> importEmployeeUsers(ImportEmployeeModel employee);

  Future<Either<Failure, void>> updateEmployee(EmployeeModel employee);

  Future<Either<Failure, void>> deleteEmployee(String employeeId);

  Future<Either<Failure, EmployeeModel>> fetchEmployee(String employeeId);

  Future<Either<Failure, List<EmployeeModel>>> fetchAllEmployees();
}

@LazySingleton(as: EmployeeRemoteDataSource)
class EmployeeRemoteDataSourceImpl implements EmployeeRemoteDataSource {
  final SupabaseClient _client;

  EmployeeRemoteDataSourceImpl(this._client);

  @override
  Future<Either<Failure, void>> createEmployee(EmployeeModel employee) {
    return safeRequest(() async {
      await _client.from('employees').insert(employee.toJson());
      return Right(null);
    });
  }

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
          .select('*')
          .withConverter((data) => data.map(EmployeeModel.fromJson).toList());
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, EmployeeModel>> fetchEmployee(String employeeId) {
    return safeRequest(() async {
      final result = await _client
          .from('employees')
          .select('*')
          .eq('employee_id', employeeId)
          .limit(1)
          .single()
          .withConverter(EmployeeModel.fromJson);
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, void>> updateEmployee(EmployeeModel employee) {
    return safeRequest(() async {
      await _client
          .from('employees')
          .update(employee.toJson())
          .eq('employee_id', '${employee.employeeId}');
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, List<EmployeeModel>>> importEmployeeUsers(
    ImportEmployeeModel importEmployee,
  ) {
    return safeRequest(() async {
      final result = await _client
          .rpc('create_employees', params: importEmployee.toJson())
          .select('*')
          .withConverter((data) => data.map(EmployeeModel.fromJson).toList());
      return Right(result);
    });
  }
}
