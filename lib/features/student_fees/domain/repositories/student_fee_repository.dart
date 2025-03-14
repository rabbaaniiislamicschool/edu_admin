import 'package:edu_admin/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../entities/student_fee.dart';

abstract class StudentFeeRepository {
  Future<Either<Failure, void>> createStudentFee(StudentFee studentFee);
  Future<Either<Failure, void>> updateStudentFee(StudentFee studentFee);
  Future<Either<Failure, void>> deleteStudentFee(int studentFeeId);
  Future<Either<Failure, StudentFee>> getStudentFee(int studentFeeId);
  Future<Either<Failure, List<StudentFee>>> getAllStudentFees();
}