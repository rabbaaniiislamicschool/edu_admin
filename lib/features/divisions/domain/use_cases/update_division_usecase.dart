import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/divisions/domain/entities/division.dart';
import 'package:edu_admin/features/divisions/domain/repositories/division_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateDivisionUseCase implements UseCase<void, Division> {
  final DivisionRepository _repository;

  UpdateDivisionUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(Division params) {
    return _repository.updateDivision(params);
  }
}
