import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/class_teachers/data/models/class_teacher_model.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/class_teacher.dart';
import '../../domain/repositories/class_teacher_repository.dart';
import '../data_sources/class_teacher_datasource.dart';

@LazySingleton(as: ClassTeacherRepository)
class ClassTeacherRepositoryImpl implements ClassTeacherRepository {
  final ClassTeacherDataSource _dataSource;

  ClassTeacherRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, void>> createClassTeacher(ClassTeacher classTeacher) {
    return _dataSource.createClassTeacher(classTeacher.toModel());
  }

  @override
  Future<Either<Failure, void>> deleteClassTeacher(int classTeacherId) {
    return _dataSource.deleteClassTeacher(classTeacherId);
  }

  @override
  Future<Either<Failure, List<ClassTeacher>>> getAllClassTeachers() async {
    final result = await _dataSource.fetchAllClassTeachers();
    return result.map((data) => data.map((model) => model.toEntity()).toList());
  }

  @override
  Future<Either<Failure, ClassTeacher>> getClassTeacher(int classTeacherId) async {
    final result = await _dataSource.fetchClassTeacher(classTeacherId);
    return result.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, void>> updateClassTeacher(ClassTeacher classTeacher) {
    return _dataSource.updateClassTeacher(classTeacher.toModel());
  }
}
