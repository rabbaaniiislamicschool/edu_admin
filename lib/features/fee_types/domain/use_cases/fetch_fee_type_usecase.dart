import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../entities/fee_type.dart';
import '../repositories/fee_type_repository.dart';

@injectable
class FetchFeeTypeUseCase implements UseCase<FeeType, int> {
  final FeeTypeRepository _repository;

  FetchFeeTypeUseCase(this._repository);

  @override
  Future<Either<Failure, FeeType>> execute(int params) {
    return _repository.getFeeType(params);
  }

}