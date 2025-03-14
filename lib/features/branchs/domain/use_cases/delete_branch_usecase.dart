import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/branchs/domain/repositories/branch_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteBranchUseCase implements UseCase<void, int>{
  final BranchRepository _repository;

  DeleteBranchUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(int params) {
    return _repository.deleteBranch(params);
  }

}