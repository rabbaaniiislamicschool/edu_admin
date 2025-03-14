import 'package:edu_admin/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../entities/fee_type.dart';

abstract class FeeTypeRepository {
  Future<Either<Failure, void>> createFeeType(FeeType feeType);
  Future<Either<Failure, void>> updateFeeType(FeeType feeType);
  Future<Either<Failure, void>> deleteFeeType(int feeTypeId);
  Future<Either<Failure, FeeType>> getFeeType(int feeTypeId);
  Future<Either<Failure, List<FeeType>>> getAllFeeTypes();
}