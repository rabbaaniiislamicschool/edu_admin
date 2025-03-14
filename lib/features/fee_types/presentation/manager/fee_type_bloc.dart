import 'dart:async';


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/create_fee_type_usecase.dart';
import '../../domain/use_cases/delete_fee_type_usecase.dart';
import '../../domain/use_cases/fetch_all_fee_types_usecase.dart';
import '../../domain/use_cases/fetch_fee_type_usecase.dart';
import '../../domain/use_cases/update_fee_type_usecase.dart';
import 'fee_type_event.dart';
import 'fee_type_state.dart';

@injectable
class FeeTypeBloc extends Bloc<FeeTypeEvent, FeeTypeState> {
  final CreateFeeTypeUseCase _createFeeTypeUseCase;
  final DeleteFeeTypeUseCase _deleteFeeTypeUseCase;
  final UpdateFeeTypeUseCase _updateFeeTypeUseCase;
  final FetchFeeTypeUseCase _fetchFeeTypeUseCase;
  final FetchAllFeeTypesUseCase _fetchAllFeeTypesUseCase;

  FeeTypeBloc(
    this._fetchFeeTypeUseCase,
    this._fetchAllFeeTypesUseCase,
    this._createFeeTypeUseCase,
    this._deleteFeeTypeUseCase,
    this._updateFeeTypeUseCase,
  ) : super(FeeTypeState.initial()) {
    on<FetchFeeTypes>(_onFetchFeeTypes);
    on<GetFeeTypeById>(_onGetFeeTypeById);
    on<DeleteFeeType>(_onDeleteFeeType);
    on<UpdateFeeType>(_onUpdateFeeType);
    on<CreateFeeType>(_onCreateFeeType);
  }

  Future<void> _onFetchFeeTypes(
    FetchFeeTypes event,
    Emitter<FeeTypeState> emit,
  ) async {
    emit(
      state.copyWith(
        status: FeeTypeStatus.loading,
        errorMessage: null,
        successMessage: null,
      ),
    );
    final result = await _fetchAllFeeTypesUseCase.execute(null);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: FeeTypeStatus.failure,
        ),
      ),
      (feeTypes) => emit(
        state.copyWith(
          status: FeeTypeStatus.success,
          feeTypes: feeTypes,
        ),
      ),
    );
  }

  Future<void> _onGetFeeTypeById(
    GetFeeTypeById event,
    Emitter<FeeTypeState> emit,
  ) async {
    emit(state.copyWith(status: FeeTypeStatus.loading));
    final result = await _fetchFeeTypeUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: FeeTypeStatus.failure,
        ),
      ),
      (feeType) => emit(
        state.copyWith(
          status: FeeTypeStatus.success,
          feeType: feeType,
        ),
      ),
    );
  }

  Future<void> _onDeleteFeeType(
    DeleteFeeType event,
    Emitter<FeeTypeState> emit,
  ) async {
    emit(state.copyWith(status: FeeTypeStatus.loading));
    final result = await _deleteFeeTypeUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: FeeTypeStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: FeeTypeStatus.success,
        ),
      ),
    );
  }

  Future<void> _onUpdateFeeType(
    UpdateFeeType event,
    Emitter<FeeTypeState> emit,
  ) async {
    emit(state.copyWith(status: FeeTypeStatus.loading));
    final result = await _updateFeeTypeUseCase.execute(event.feeType);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: FeeTypeStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: FeeTypeStatus.success,
        ),
      ),
    );
  }

  Future<void> _onCreateFeeType(
    CreateFeeType event,
    Emitter<FeeTypeState> emit,
  ) async {
    emit(state.copyWith(status: FeeTypeStatus.loading));
    final result = await _createFeeTypeUseCase.execute(event.feeType);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: FeeTypeStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: FeeTypeStatus.success,
        ),
      ),
    );
  }
}
