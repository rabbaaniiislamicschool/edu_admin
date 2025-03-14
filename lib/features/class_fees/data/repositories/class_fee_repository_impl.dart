import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/class_fees/data/models/class_fee_model.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/class_fee.dart';
import '../../domain/repositories/class_fee_repository.dart';
import '../data_sources/class_fee_datasource.dart';

@LazySingleton(as: ClassFeeRepository)
class ClassFeeRepositoryImpl implements ClassFeeRepository {
  final ClassFeeDataSource _dataSource;

  ClassFeeRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, void>> createClassFee(ClassFee classFee) {
    return _dataSource.createClassFee(classFee.toModel());
  }

  @override
  Future<Either<Failure, void>> deleteClassFee(int classFeeId) {
    return _dataSource.deleteClassFee(classFeeId);
  }

  @override
  Future<Either<Failure, List<ClassFee>>> getAllClassFees() async {
    final result = await _dataSource.fetchAllClassFees();
    return result.map((data) => data.map((model) => model.toEntity()).toList());
  }

  @override
  Future<Either<Failure, ClassFee>> getClassFee(int classFeeId) async {
    final result = await _dataSource.fetchClassFee(classFeeId);
    return result.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, void>> updateClassFee(ClassFee classFee) {
    return _dataSource.updateClassFee(classFee.toModel());
  }
}
