import 'dart:async';

import 'package:edu_admin/features/foundations/domain/use_cases/fetch_foundation_usecase.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/create_foundation_usecase.dart';
import '../../domain/use_cases/create_foundations_usecase.dart';
import '../../domain/use_cases/delete_foundation_usecase.dart';
import '../../domain/use_cases/fetch_all_foundations_usecase.dart';
import '../../domain/use_cases/update_foundation_usecase.dart';
import 'foundation_event.dart';
import 'foundation_state.dart';

@injectable
class FoundationBloc extends Bloc<FoundationEvent, FoundationState> {
  final CreateFoundationUseCase _createFoundationUseCase;
  final CreateFoundationsUseCase _createFoundationsUseCase;
  final DeleteFoundationUseCase _deleteFoundationUseCase;
  final UpdateFoundationUseCase _updateFoundationUseCase;
  final FetchFoundationUseCase _fetchFoundationUseCase;
  final FetchAllFoundationsUseCase _fetchAllFoundationsUseCase;

  FoundationBloc(
    this._fetchFoundationUseCase,
    this._fetchAllFoundationsUseCase,
    this._createFoundationUseCase,
    this._createFoundationsUseCase,
    this._deleteFoundationUseCase,
    this._updateFoundationUseCase,
  ) : super(FoundationState.initial()) {
    on<FetchFoundations>(_onFetchFoundations);
    on<GetFoundationById>(_onGetFoundationById);
    on<DeleteFoundation>(_onDeleteFoundation);
    on<UpdateFoundation>(_onUpdateFoundation);
    on<CreateFoundation>(_onCreateFoundation);
    on<CreateFoundations>(_onCreateFoundations);
  }

  Future<void> _onFetchFoundations(
    FetchFoundations event,
    Emitter<FoundationState> emit,
  ) async {
    emit(
      state.copyWith(
        status: FoundationStatus.loading,
        errorMessage: null,
      ),
    );
    final result = await _fetchAllFoundationsUseCase.execute(null);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: FoundationStatus.failure,
        ),
      ),
      (foundations) => emit(
        state.copyWith(
          status: FoundationStatus.success,
          foundations: foundations,
        ),
      ),
    );
  }

  Future<void> _onGetFoundationById(
    GetFoundationById event,
    Emitter<FoundationState> emit,
  ) async {
    emit(state.copyWith(status: FoundationStatus.loading));
    final result = await _fetchFoundationUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: FoundationStatus.failure,
        ),
      ),
      (foundation) => emit(
        state.copyWith(
          status: FoundationStatus.success,
          foundation: foundation,
        ),
      ),
    );
  }

  Future<void> _onDeleteFoundation(
    DeleteFoundation event,
    Emitter<FoundationState> emit,
  ) async {
    emit(state.copyWith(status: FoundationStatus.loading));
    final result = await _deleteFoundationUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: FoundationStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
            status: FoundationStatus.deleteSuccess,
        ),
      ),
    );
  }

  Future<void> _onUpdateFoundation(
    UpdateFoundation event,
    Emitter<FoundationState> emit,
  ) async {
    emit(state.copyWith(status: FoundationStatus.loading));
    final result = await _updateFoundationUseCase.execute(event.foundation);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: FoundationStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          status: FoundationStatus.updateSuccess,
        ),
      ),
    );
  }

  Future<void> _onCreateFoundation(
    CreateFoundation event,
    Emitter<FoundationState> emit,
  ) async {
    emit(state.copyWith(status: FoundationStatus.loading));
    final result = await _createFoundationUseCase.execute(event.foundation);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: FoundationStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          status: FoundationStatus.insertSuccess,
        ),
      ),
    );
  }

  Future<void> _onCreateFoundations(
    CreateFoundations event,
    Emitter<FoundationState> emit,
  ) async {
    emit(state.copyWith(status: FoundationStatus.loading));
    final result = await _createFoundationsUseCase.execute(event.foundations);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: FoundationStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          status: FoundationStatus.importSuccess,
        ),
      ),
    );
  }
}
