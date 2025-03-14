import 'package:edu_admin/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../entities/class_teacher.dart';

abstract class ClassTeacherRepository {
  Future<Either<Failure, void>> createClassTeacher(ClassTeacher classTeacher);
  Future<Either<Failure, void>> updateClassTeacher(ClassTeacher classTeacher);
  Future<Either<Failure, void>> deleteClassTeacher(int classTeacherId);
  Future<Either<Failure, ClassTeacher>> getClassTeacher(int classTeacherId);
  Future<Either<Failure, List<ClassTeacher>>> getAllClassTeachers();
}