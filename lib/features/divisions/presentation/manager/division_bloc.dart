import 'dart:async';

import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/divisions/domain/entities/division.dart';
import 'package:edu_admin/features/divisions/domain/use_cases/create_divisions_usecase.dart';
import 'package:edu_admin/features/divisions/domain/use_cases/fetch_division_usecase.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/create_division_usecase.dart';
import '../../domain/use_cases/delete_division_usecase.dart';
import '../../domain/use_cases/fetch_all_divisions_usecase.dart';
import '../../domain/use_cases/update_division_usecase.dart';
import 'division_event.dart';
import 'division_state.dart';

@injectable
class DivisionBloc extends Bloc<DivisionEvent, DivisionState> {
  final CreateDivisionUseCase _createDivisionUseCase;
  final CreateDivisionsUseCase _createDivisionsUseCase;
  final DeleteDivisionUseCase _deleteDivisionUseCase;
  final UpdateDivisionUseCase _updateDivisionUseCase;
  final FetchDivisionUseCase _fetchDivisionUseCase;
  final FetchAllDivisionsUseCase _fetchAllDivisionsUseCase;

  DivisionBloc(
    this._fetchDivisionUseCase,
    this._fetchAllDivisionsUseCase,
    this._createDivisionUseCase,
    this._deleteDivisionUseCase,
    this._updateDivisionUseCase,
    this._createDivisionsUseCase,
  ) : super(DivisionState.initial()) {
    on<FetchDivisions>(_onFetchDivisions);
    on<GetDivisionById>(_onGetDivisionById);
    on<DeleteDivision>(_onDeleteDivision);
    on<UpdateDivision>(_onUpdateDivision);
    on<CreateDivision>(_onCreateDivision);
    on<CreateDivisions>(_onCreateDivisions);
  }

  Future<void> _onFetchDivisions(
    FetchDivisions event,
    Emitter<DivisionState> emit,
  ) async {
    emit(
      state.copyWith(
        status: DivisionStatus.loading,
        errorMessage: null,
        successMessage: null,
      ),
    );
    final result = await fetchAllDivisions();
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: DivisionStatus.failure,
        ),
      ),
      (divisions) => emit(
        state.copyWith(status: DivisionStatus.success, divisions: divisions),
      ),
    );
  }

  Future<void> _onGetDivisionById(
    GetDivisionById event,
    Emitter<DivisionState> emit,
  ) async {
    emit(state.copyWith(status: DivisionStatus.loading));
    final result = await _fetchDivisionUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: DivisionStatus.failure,
        ),
      ),
      (division) => emit(
        state.copyWith(status: DivisionStatus.success, division: division),
      ),
    );
  }

  Future<void> _onDeleteDivision(
    DeleteDivision event,
    Emitter<DivisionState> emit,
  ) async {
    emit(state.copyWith(status: DivisionStatus.loading));
    final result = await _deleteDivisionUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: DivisionStatus.failure,
        ),
      ),
      (_) => emit(state.copyWith(status: DivisionStatus.deleteSuccess)),
    );
  }

  Future<void> _onUpdateDivision(
    UpdateDivision event,
    Emitter<DivisionState> emit,
  ) async {
    emit(state.copyWith(status: DivisionStatus.loading));
    final result = await _updateDivisionUseCase.execute(event.division);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: DivisionStatus.failure,
        ),
      ),
      (_) => emit(state.copyWith(status: DivisionStatus.updateSuccess)),
    );
  }

  Future<void> _onCreateDivision(
    CreateDivision event,
    Emitter<DivisionState> emit,
  ) async {
    emit(state.copyWith(status: DivisionStatus.loading));
    final result = await _createDivisionUseCase.execute(event.division);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: DivisionStatus.failure,
        ),
      ),
      (_) => emit(state.copyWith(status: DivisionStatus.insertSuccess)),
    );
  }

  Future<void> _onCreateDivisions(
    CreateDivisions event,
    Emitter<DivisionState> emit,
  ) async {
    emit(state.copyWith(status: DivisionStatus.loading));
    final result = await _createDivisionsUseCase.execute(event.divisions);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: DivisionStatus.failure,
        ),
      ),
      (_) => emit(state.copyWith(status: DivisionStatus.importSuccess)),
    );
  }

  Future<Either<Failure, List<Division>>> fetchAllDivisions() {
    return _fetchAllDivisionsUseCase.execute(null);
  }
}
