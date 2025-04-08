import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/divisions/domain/entities/division.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../repositories/division_repository.dart';

@injectable
class FetchAllDivisionsUseCase implements UseCase<List<Division>, void> {
  final DivisionRepository _repository;

  FetchAllDivisionsUseCase(this._repository);

  @override
  Future<Either<Failure, List<Division>>> execute(void params) {
    return _repository.getAllDivisions();
  }
}
