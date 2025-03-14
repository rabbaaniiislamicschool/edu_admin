import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/branchs/domain/entities/branch.dart';
import 'package:edu_admin/features/branchs/domain/repositories/branch_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateBranchesUseCase implements UseCase<void, List<Branch>>{
  final BranchRepository _repository;

  CreateBranchesUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(List<Branch> params) {
    return _repository.createBranches(params);
  }

}