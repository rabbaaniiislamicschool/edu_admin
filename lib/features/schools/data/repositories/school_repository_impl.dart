import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/schools/data/data_sources/school_datasource.dart';
import 'package:edu_admin/features/schools/data/models/school_model.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:edu_admin/features/schools/domain/repositories/school_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SchoolRepository)
class SchoolRepositoryImpl implements SchoolRepository {
  final SchoolDataSource _dataSource;

  SchoolRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, void>> createSchool(School school) {
    return _dataSource.createSchool(school.toModel());
  }

  @override
  Future<Either<Failure, void>> deleteSchool(int schoolId) {
    return _dataSource.deleteSchool(schoolId);
  }

  @override
  Future<Either<Failure, List<School>>> getAllSchools() async {
    final result = await _dataSource.fetchAllSchools();
    return result.map((data) => data.map((model) => model.toEntity()).toList());
  }

  @override
  Future<Either<Failure, School>> getSchool(int schoolId) async {
    final result = await _dataSource.fetchSchool(schoolId);
    return result.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, void>> updateSchool(School school) {
    return _dataSource.updateSchool(school.toModel());
  }
}
