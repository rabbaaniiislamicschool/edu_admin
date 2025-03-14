import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/class_fee.dart';
import '../repositories/class_fee_repository.dart';

@injectable
class FetchClassFeeUseCase implements UseCase<ClassFee, int> {
  final ClassFeeRepository _repository;

  FetchClassFeeUseCase(this._repository);

  @override
  Future<Either<Failure, ClassFee>> execute(int params) {
    return _repository.getClassFee(params);
  }

}