import 'package:edu_admin/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../entities/class_fee.dart';

abstract class ClassFeeRepository {
  Future<Either<Failure, void>> createClassFee(ClassFee classFee);
  Future<Either<Failure, void>> updateClassFee(ClassFee classFee);
  Future<Either<Failure, void>> deleteClassFee(int classFeeId);
  Future<Either<Failure, ClassFee>> getClassFee(int classFeeId);
  Future<Either<Failure, List<ClassFee>>> getAllClassFees();
}