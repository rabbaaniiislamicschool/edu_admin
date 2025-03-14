import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/class.dart';
import '../repositories/class_repository.dart';

@injectable
class UpdateClassUseCase implements UseCase<void, Class>{
  final ClassRepository _repository;

  UpdateClassUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(Class params) {
    return _repository.updateClass(params);
  }

}