import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/class_fee.dart';
import '../repositories/class_fee_repository.dart';

@injectable
class FetchAllClassFeesUseCase implements UseCase<List<ClassFee>, void>{

  final ClassFeeRepository _repository;

  FetchAllClassFeesUseCase(this._repository);

  @override
  Future<Either<Failure, List<ClassFee>>> execute(void params) {
    return _repository.getAllClassFees();
  }
}