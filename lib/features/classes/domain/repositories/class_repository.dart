import 'package:edu_admin/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../entities/class.dart';


abstract class ClassRepository {
  Future<Either<Failure, void>> createClass(Class _class);
  Future<Either<Failure, void>> updateClass(Class _class);
  Future<Either<Failure, void>> deleteClass(int classId);
  Future<Either<Failure, Class>> getClass(int classId);
  Future<Either<Failure, List<Class>>> getAllClass();
}