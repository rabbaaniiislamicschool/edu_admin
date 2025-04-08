import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/divisions/data/data_sources/division_datasource.dart';
import 'package:edu_admin/features/divisions/data/models/division_model.dart';
import 'package:edu_admin/features/divisions/domain/entities/division.dart';
import 'package:edu_admin/features/divisions/domain/repositories/division_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DivisionRepository)
class DivisionRepositoryImpl implements DivisionRepository {
  final DivisionDataSource _dataSource;

  DivisionRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, void>> createDivision(Division division) {
    return _dataSource.createDivision(division.toModel());
  }

  @override
  Future<Either<Failure, void>> deleteDivision(int divisionId) {
    return _dataSource.deleteDivision(divisionId);
  }

  @override
  Future<Either<Failure, List<Division>>> getAllDivisions() async {
    final result = await _dataSource.fetchAllDivisions();
    return result.map((data) => data.map((model) => model.toEntity()).toList());
  }

  @override
  Future<Either<Failure, Division>> getDivision(int divisionId) async {
    final result = await _dataSource.fetchDivision(divisionId);
    return result.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, void>> updateDivision(Division division) {
    return _dataSource.updateDivision(division.toModel());
  }

  @override
  Future<Either<Failure, void>> createDivisions(List<Division> divisions) {
    final data = divisions.map((entity) => entity.toModel()).toList();
    return _dataSource.createDivisions(data);
  }
}
