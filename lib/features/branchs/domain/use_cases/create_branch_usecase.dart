import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/branchs/domain/entities/branch.dart';
import 'package:edu_admin/features/branchs/domain/repositories/branch_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateBranchUseCase implements UseCase<void, Branch>{
  final BranchRepository _repository;

  CreateBranchUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(Branch params) {
    return _repository.createBranch(params);
  }

}