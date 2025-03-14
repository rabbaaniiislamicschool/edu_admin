import 'package:edu_admin/core/utils/safe_request.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/error/failure.dart';
import '../models/student_fee_model.dart';

abstract class StudentFeeDataSource {
  Future<Either<Failure, void>> createStudentFee(StudentFeeModel studentFee);

  Future<Either<Failure, void>> updateStudentFee(StudentFeeModel studentFee);

  Future<Either<Failure, void>> deleteStudentFee(int studentFeeId);

  Future<Either<Failure, StudentFeeModel>> fetchStudentFee(int studentFeeId);

  Future<Either<Failure, List<StudentFeeModel>>> fetchAllStudentFees();
}

@LazySingleton(as: StudentFeeDataSource)
class StudentFeeDataSourceImpl implements StudentFeeDataSource {
  final SupabaseClient _client;

  StudentFeeDataSourceImpl(this._client);

  @override
  Future<Either<Failure, void>> createStudentFee(StudentFeeModel studentFee) {
    return safeRequest(() async {
      await _client.from('student_fees').insert(studentFee.toJson());
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, void>> deleteStudentFee(int studentFeeId) {
    return safeRequest(() async {
      await _client
          .from('student_fees')
          .delete()
          .eq('student_fee_id', studentFeeId);
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, List<StudentFeeModel>>> fetchAllStudentFees() {
    return safeRequest(() async {
      final result = await _client
          .from('student_fees')
          .select('*')
          .withConverter((data) => data.map(StudentFeeModel.fromJson).toList());
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, StudentFeeModel>> fetchStudentFee(int studentFeeId) {
    return safeRequest(() async {
      final result = await _client
          .from('student_fees')
          .select('*')
          .eq('student_fee_id', studentFeeId)
          .limit(1)
          .single()
          .withConverter(StudentFeeModel.fromJson);
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, void>> updateStudentFee(StudentFeeModel studentFee) {
    return safeRequest(() async {
      await _client
          .from('student_fees')
          .update(studentFee.toJson())
          .eq('student_fee_id', '${studentFee.studentFeeId}');
      return Right(null);
    });
  }
}
