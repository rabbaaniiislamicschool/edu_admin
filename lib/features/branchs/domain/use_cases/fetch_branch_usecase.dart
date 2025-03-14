import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/branch.dart';
import '../repositories/branch_repository.dart';

@injectable
class FetchBranchUseCase implements UseCase<Branch, int> {
  final BranchRepository _repository;

  FetchBranchUseCase(this._repository);

  @override
  Future<Either<Failure, Branch>> execute(int params) {
    return _repository.getBranch(params);
  }

}