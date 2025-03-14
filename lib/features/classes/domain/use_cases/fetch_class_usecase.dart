import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/class.dart';
import '../repositories/class_repository.dart';

@injectable
class FetchClassUseCase implements UseCase<Class, int> {
  final ClassRepository _repository;

  FetchClassUseCase(this._repository);

  @override
  Future<Either<Failure, Class>> execute(int params) {
    return _repository.getClass(params);
  }

}