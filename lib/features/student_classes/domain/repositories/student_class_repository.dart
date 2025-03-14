import 'package:edu_admin/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../entities/student_class.dart';

abstract class StudentClassRepository {
  Future<Either<Failure, void>> createStudentClass(StudentClass studentClass);
  Future<Either<Failure, void>> updateStudentClass(StudentClass studentClass);
  Future<Either<Failure, void>> deleteStudentClass(int studentClassId);
  Future<Either<Failure, StudentClass>> getStudentClass(int studentClassId);
  Future<Either<Failure, List<StudentClass>>> getAllStudentClasss();
}