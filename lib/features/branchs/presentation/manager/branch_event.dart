import 'package:edu_admin/features/branchs/domain/entities/branch.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_event.freezed.dart';

@freezed
abstract class BranchEvent with _$BranchEvent {
  const factory BranchEvent.fetchAllBranches() = FetchAllBranches;
  const factory BranchEvent.getBranchById(int id) = GetBranchById;
  const factory BranchEvent.createBranch(Branch branch) = CreateBranch;
  const factory BranchEvent.createBranches(List<Branch> branch) = CreateBranches;
  const factory BranchEvent.deleteBranch(int id) = DeleteBranch;
  const factory BranchEvent.updateBranch(Branch branch) = UpdateBranch;
}