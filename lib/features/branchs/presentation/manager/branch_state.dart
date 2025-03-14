import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/branch.dart';

part 'branch_state.freezed.dart';

enum BranchStatus { initial, loading, failure, success, insertSuccess, updateSuccess, deleteSuccess, importSuccess }


@freezed
abstract class BranchState with _$BranchState {
  const factory BranchState({
    @Default(BranchStatus.initial) BranchStatus status,
    String? errorMessage,
    String? successMessage,
    List<Branch>? branches,
    Branch? branch,
  }) = _BranchState;

  factory BranchState.initial() => const BranchState();
}