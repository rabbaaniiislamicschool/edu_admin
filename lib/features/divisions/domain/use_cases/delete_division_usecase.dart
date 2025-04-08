import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/divisions/domain/repositories/division_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteDivisionUseCase implements UseCase<void, int> {
  final DivisionRepository _repository;

  DeleteDivisionUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(int params) {
    return _repository.deleteDivision(params);
  }
}
