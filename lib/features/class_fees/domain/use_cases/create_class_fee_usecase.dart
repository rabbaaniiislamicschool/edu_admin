import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/class_fee.dart';
import '../repositories/class_fee_repository.dart';

@injectable
class CreateClassFeeUseCase implements UseCase<void, ClassFee>{
  final ClassFeeRepository _repository;

  CreateClassFeeUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(ClassFee params) {
    return _repository.createClassFee(params);
  }

}