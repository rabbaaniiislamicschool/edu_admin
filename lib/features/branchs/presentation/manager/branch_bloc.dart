import 'dart:async';

import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/branchs/domain/entities/branch.dart';
import 'package:edu_admin/features/branchs/domain/use_cases/fetch_branch_usecase.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/create_branch_usecase.dart';
import '../../domain/use_cases/create_branches_usecase.dart';
import '../../domain/use_cases/delete_branch_usecase.dart';
import '../../domain/use_cases/fetch_all_branches_usecase.dart';
import '../../domain/use_cases/update_branch_usecase.dart';
import 'branch_event.dart';
import 'branch_state.dart';

@injectable
class BranchBloc extends Bloc<BranchEvent, BranchState> {
  final CreateBranchUseCase _createBranchUseCase;
  final CreateBranchesUseCase _createBranchesUseCase;
  final DeleteBranchUseCase _deleteBranchUseCase;
  final UpdateBranchUseCase _updateBranchUseCase;
  final FetchBranchUseCase _fetchBranchUseCase;
  final FetchAllBranchesUseCase _fetchAllBranchesUseCase;

  BranchBloc(
    this._fetchBranchUseCase,
    this._fetchAllBranchesUseCase,
    this._createBranchUseCase,
    this._createBranchesUseCase,
    this._deleteBranchUseCase,
    this._updateBranchUseCase,
  ) : super(BranchState.initial()) {
    on<FetchAllBranches>(_onFetchBranches);
    on<GetBranchById>(_onGetBranchById);
    on<DeleteBranch>(_onDeleteBranch);
    on<UpdateBranch>(_onUpdateBranch);
    on<CreateBranch>(_onCreateBranch);
    on<CreateBranches>(_onCreateBranches);
  }

  Future<void> _onFetchBranches(
    FetchAllBranches event,
    Emitter<BranchState> emit,
  ) async {
    emit(state.copyWith(status: BranchStatus.loading, errorMessage: null));
    final result = await fetchAllBranches();
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: BranchStatus.failure,
        ),
      ),
      (branches) => emit(
        state.copyWith(status: BranchStatus.success, branches: branches),
      ),
    );
  }

  Future<void> _onGetBranchById(
    GetBranchById event,
    Emitter<BranchState> emit,
  ) async {
    emit(state.copyWith(status: BranchStatus.loading));
    final result = await _fetchBranchUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: BranchStatus.failure,
        ),
      ),
      (branch) =>
          emit(state.copyWith(status: BranchStatus.success, branch: branch)),
    );
  }

  Future<void> _onDeleteBranch(
    DeleteBranch event,
    Emitter<BranchState> emit,
  ) async {
    emit(state.copyWith(status: BranchStatus.loading));
    final result = await _deleteBranchUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: BranchStatus.failure,
        ),
      ),
      (_) => emit(state.copyWith(status: BranchStatus.deleteSuccess)),
    );
  }

  Future<void> _onUpdateBranch(
    UpdateBranch event,
    Emitter<BranchState> emit,
  ) async {
    emit(state.copyWith(status: BranchStatus.loading));
    final result = await _updateBranchUseCase.execute(event.branch);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: BranchStatus.failure,
        ),
      ),
      (_) => emit(state.copyWith(status: BranchStatus.updateSuccess)),
    );
  }

  Future<void> _onCreateBranch(
    CreateBranch event,
    Emitter<BranchState> emit,
  ) async {
    emit(state.copyWith(status: BranchStatus.loading));
    final result = await _createBranchUseCase.execute(event.branch);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: BranchStatus.failure,
        ),
      ),
      (_) => emit(state.copyWith(status: BranchStatus.insertSuccess)),
    );
  }

  Future<void> _onCreateBranches(
    CreateBranches event,
    Emitter<BranchState> emit,
  ) async {
    emit(state.copyWith(status: BranchStatus.loading));
    final result = await _createBranchesUseCase.execute(event.branch);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: BranchStatus.failure,
        ),
      ),
      (_) => emit(state.copyWith(status: BranchStatus.importSuccess)),
    );
  }

  Future<Either<Failure, List<Branch>>> fetchAllBranches() {
    return _fetchAllBranchesUseCase.execute(null);
  }
}
