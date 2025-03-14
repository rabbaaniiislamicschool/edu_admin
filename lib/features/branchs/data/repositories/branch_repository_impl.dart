import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/branchs/data/data_sources/branch_datasource.dart';
import 'package:edu_admin/features/branchs/data/models/branch_model.dart';
import 'package:edu_admin/features/branchs/domain/repositories/branch_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/branch.dart';


@LazySingleton(as: BranchRepository)
class BranchRepositoryImpl implements BranchRepository {
  final BranchDataSource _dataSource;

  BranchRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, void>> createBranch(Branch branch) {
    return _dataSource.createBranch(branch.toModel());
  }

  @override
  Future<Either<Failure, void>> deleteBranch(int branchId) {
    return _dataSource.deleteBranch(branchId);
  }

  @override
  Future<Either<Failure, List<Branch>>> getAllBranches() async {
    final result = await _dataSource.fetchAllBranchs();
    return result.map((data) => data.map((model) => model.toEntity()).toList());
  }

  @override
  Future<Either<Failure, Branch>> getBranch(int branchId) async {
    final result = await _dataSource.fetchBranch(branchId);
    return result.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, void>> updateBranch(Branch branch) {
    return _dataSource.updateBranch(branch.toModel());
  }

  @override
  Future<Either<Failure, void>> createBranches(List<Branch> branches) {
    final data = branches.map((entity) => entity.toModel()).toList();
    return _dataSource.createBranches(data);
  }
}
