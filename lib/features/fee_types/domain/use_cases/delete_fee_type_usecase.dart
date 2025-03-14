import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/repositories/school_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../repositories/fee_type_repository.dart';

@injectable
class DeleteFeeTypeUseCase implements UseCase<void, int>{
  final FeeTypeRepository _repository;

  DeleteFeeTypeUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(int params) {
    return _repository.deleteFeeType(params);
  }

}