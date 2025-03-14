import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/student_classes/data/models/student_class_model.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/student_class.dart';
import '../../domain/repositories/student_class_repository.dart';
import '../data_sources/student_class_datasource.dart';

@LazySingleton(as: StudentClassRepository)
class StudentClassRepositoryImpl implements StudentClassRepository {
  final StudentClassDataSource _dataSource;

  StudentClassRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, void>> createStudentClass(StudentClass studentClass) {
    return _dataSource.createStudentClass(studentClass.toModel());
  }

  @override
  Future<Either<Failure, void>> deleteStudentClass(int studentClassId) {
    return _dataSource.deleteStudentClass(studentClassId);
  }

  @override
  Future<Either<Failure, List<StudentClass>>> getAllStudentClasss() async {
    final result = await _dataSource.fetchAllStudentClasss();
    return result.map((data) => data.map((model) => model.toEntity()).toList());
  }

  @override
  Future<Either<Failure, StudentClass>> getStudentClass(int studentClassId) async {
    final result = await _dataSource.fetchStudentClass(studentClassId);
    return result.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, void>> updateStudentClass(StudentClass studentClass) {
    return _dataSource.updateStudentClass(studentClass.toModel());
  }
}
