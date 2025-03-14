import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/fee_type.dart';
import '../repositories/fee_type_repository.dart';

@injectable
class FetchAllFeeTypesUseCase implements UseCase<List<FeeType>, void>{

  final FeeTypeRepository _repository;

  FetchAllFeeTypesUseCase(this._repository);

  @override
  Future<Either<Failure, List<FeeType>>> execute(void params) {
    return _repository.getAllFeeTypes();
  }
}