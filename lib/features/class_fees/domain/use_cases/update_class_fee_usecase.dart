import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:edu_admin/features/schools/domain/repositories/school_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/class_fee.dart';
import '../repositories/class_fee_repository.dart';

@injectable
class UpdateClassFeeUseCase implements UseCase<void, ClassFee>{
  final ClassFeeRepository _repository;

  UpdateClassFeeUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(ClassFee params) {
    return _repository.updateClassFee(params);
  }

}