import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';

import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/class.dart';
import '../repositories/class_repository.dart';

@injectable
class CreateClassUseCase implements UseCase<void, Class>{
  final ClassRepository _repository;

  CreateClassUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(Class params) {
    return _repository.createClass(params);
  }

}