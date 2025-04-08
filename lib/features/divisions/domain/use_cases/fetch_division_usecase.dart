import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/division.dart';
import '../repositories/division_repository.dart';

@injectable
class FetchDivisionUseCase implements UseCase<Division, int> {
  final DivisionRepository _repository;

  FetchDivisionUseCase(this._repository);

  @override
  Future<Either<Failure, Division>> execute(int params) {
    return _repository.getDivision(params);
  }
}
