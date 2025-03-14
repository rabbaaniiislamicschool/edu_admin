import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:edu_admin/features/schools/domain/repositories/school_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/fee_type.dart';
import '../repositories/fee_type_repository.dart';

@injectable
class UpdateFeeTypeUseCase implements UseCase<void, FeeType>{
  final FeeTypeRepository _repository;

  UpdateFeeTypeUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(FeeType params) {
    return _repository.updateFeeType(params);
  }

}