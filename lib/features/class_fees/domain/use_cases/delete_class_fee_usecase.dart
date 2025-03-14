import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/repositories/school_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../repositories/class_fee_repository.dart';

@injectable
class DeleteClassFeeUseCase implements UseCase<void, int>{
  final ClassFeeRepository _repository;

  DeleteClassFeeUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(int params) {
    return _repository.deleteClassFee(params);
  }

}