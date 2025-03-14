import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/classes/data/models/class_model.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/class.dart';
import '../../domain/repositories/class_repository.dart';
import '../data_sources/class_datasource.dart';

@LazySingleton(as: ClassRepository)
class ClassRepositoryImpl implements ClassRepository {
  final ClassDataSource _dataSource;

  ClassRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, void>> createClass(Class _class) {
    return _dataSource.createClass(_class.toModel());
  }

  @override
  Future<Either<Failure, void>> deleteClass(int classId) {
    return _dataSource.deleteClass(classId);
  }

  @override
  Future<Either<Failure, List<Class>>> getAllClass() async {
    final result = await _dataSource.fetchAllClasss();
    return result.map((data) => data.map((model) => model.toEntity()).toList());
  }

  @override
  Future<Either<Failure, Class>> getClass(int classId) async {
    final result = await _dataSource.fetchClass(classId);
    return result.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, void>> updateClass(Class _class) {
    return _dataSource.updateClass(_class.toModel());
  }
}
