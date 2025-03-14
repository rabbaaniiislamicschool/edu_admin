import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/branchs/domain/entities/branch.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../repositories/branch_repository.dart';

@injectable
class FetchAllBranchesUseCase implements UseCase<List<Branch>, void>{

  final BranchRepository _repository;

  FetchAllBranchesUseCase(this._repository);

  @override
  Future<Either<Failure, List<Branch>>> execute(void params) {
    return _repository.getAllBranches();
  }
}