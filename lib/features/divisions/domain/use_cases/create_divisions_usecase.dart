import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/divisions/domain/entities/division.dart';
import 'package:edu_admin/features/divisions/domain/repositories/division_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateDivisionsUseCase implements UseCase<void, List<Division>> {
  final DivisionRepository _repository;

  CreateDivisionsUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(List<Division> params) {
    return _repository.createDivisions(params);
  }
}
