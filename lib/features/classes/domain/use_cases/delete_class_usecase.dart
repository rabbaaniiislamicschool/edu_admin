import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../repositories/class_repository.dart';

@injectable
class DeleteClassUseCase implements UseCase<void, int>{
  final ClassRepository _repository;

  DeleteClassUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(int params) {
    return _repository.deleteClass(params);
  }

}