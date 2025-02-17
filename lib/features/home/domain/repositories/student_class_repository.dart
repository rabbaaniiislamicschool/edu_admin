import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/home/domain/entities/student_class.dart';
import 'package:fpdart/fpdart.dart';

abstract class StudentClassRepository {
  Future<Either<Failure, StudentClass>> getStudentClass();
}