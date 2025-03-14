import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/foundations/data/data_sources/foundation_datasource.dart';
import 'package:edu_admin/features/foundations/data/models/foundation_model.dart';
import 'package:edu_admin/features/foundations/domain/entities/foundation.dart';
import 'package:edu_admin/features/foundations/domain/repositories/foundation_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: FoundationRepository)
class FoundationRepositoryImpl implements FoundationRepository {
  final FoundationDataSource _dataSource;

  FoundationRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, void>> createFoundation(Foundation foundation) {
    return _dataSource.createFoundation(foundation.toModel());
  }

  @override
  Future<Either<Failure, void>> deleteFoundation(String foundationId) {
    return _dataSource.deleteFoundation(foundationId);
  }

  @override
  Future<Either<Failure, List<Foundation>>> getAllFoundations() async {
    final result = await _dataSource.fetchAllFoundations();
    return result.map((data) => data.map((model) => model.toEntity()).toList());
  }

  @override
  Future<Either<Failure, Foundation>> getFoundation(String foundationId) async {
    final result = await _dataSource.fetchFoundation(foundationId);
    return result.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, void>> updateFoundation(Foundation foundation) {
    return _dataSource.updateFoundation(foundation.toModel());
  }

  @override
  Future<Either<Failure, void>> createFoundations(
    List<Foundation> foundations,
  ) async {
    final data = foundations.map((entity) => entity.toModel()).toList();
    return _dataSource.createFoundations(data);
  }
}
