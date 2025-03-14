import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/branchs/domain/entities/branch.dart';
import 'package:fpdart/fpdart.dart';

abstract class BranchRepository {
  Future<Either<Failure, void>> createBranch(Branch branch);
  Future<Either<Failure, void>> createBranches(List<Branch> branches);
  Future<Either<Failure, void>> updateBranch(Branch branch);
  Future<Either<Failure, void>> deleteBranch(int branchId);
  Future<Either<Failure, Branch>> getBranch(int branchId);
  Future<Either<Failure, List<Branch>>> getAllBranches();
}