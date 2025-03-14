import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/fee_types/data/models/fee_type_model.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/fee_type.dart';
import '../../domain/repositories/fee_type_repository.dart';
import '../data_sources/fee_type_datasource.dart';

@LazySingleton(as: FeeTypeRepository)
class FeeTypeRepositoryImpl implements FeeTypeRepository {
  final FeeTypeDataSource _dataSource;

  FeeTypeRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, void>> createFeeType(FeeType feeType) {
    return _dataSource.createFeeType(feeType.toModel());
  }

  @override
  Future<Either<Failure, void>> deleteFeeType(int feeTypeId) {
    return _dataSource.deleteFeeType(feeTypeId);
  }

  @override
  Future<Either<Failure, List<FeeType>>> getAllFeeTypes() async {
    final result = await _dataSource.fetchAllFeeTypes();
    return result.map((data) => data.map((model) => model.toEntity()).toList());
  }

  @override
  Future<Either<Failure, FeeType>> getFeeType(int feeTypeId) async {
    final result = await _dataSource.fetchFeeType(feeTypeId);
    return result.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, void>> updateFeeType(FeeType feeType) {
    return _dataSource.updateFeeType(feeType.toModel());
  }
}
