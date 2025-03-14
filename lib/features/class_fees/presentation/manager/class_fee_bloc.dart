import 'dart:async';

import 'package:edu_admin/features/class_fees/presentation/manager/class_fee_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/create_class_fee_usecase.dart';
import '../../domain/use_cases/delete_class_fee_usecase.dart';
import '../../domain/use_cases/fetch_all_class_fees_usecase.dart';
import '../../domain/use_cases/fetch_class_fee_usecase.dart';
import '../../domain/use_cases/update_class_fee_usecase.dart';
import 'class_fee_state.dart';


@injectable
class ClassFeeBloc extends Bloc<ClassFeeEvent, ClassFeeState> {
  final CreateClassFeeUseCase _createClassFeeUseCase;
  final DeleteClassFeeUseCase _deleteClassFeeUseCase;
  final UpdateClassFeeUseCase _updateClassFeeUseCase;
  final FetchClassFeeUseCase _fetchClassFeeUseCase;
  final FetchAllClassFeesUseCase _fetchAllClassFeesUseCase;

  ClassFeeBloc(
    this._fetchClassFeeUseCase,
    this._fetchAllClassFeesUseCase,
    this._createClassFeeUseCase,
    this._deleteClassFeeUseCase,
    this._updateClassFeeUseCase,
  ) : super(ClassFeeState.initial()) {
    on<FetchClassFees>(_onFetchClassFees);
    on<GetClassFeeById>(_onGetClassFeeById);
    on<DeleteClassFee>(_onDeleteClassFee);
    on<UpdateClassFee>(_onUpdateClassFee);
    on<CreateClassFee>(_onCreateClassFee);
  }

  Future<void> _onFetchClassFees(
    FetchClassFees event,
    Emitter<ClassFeeState> emit,
  ) async {
    emit(
      state.copyWith(
        status: ClassFeeStatus.loading,
        errorMessage: null,
        successMessage: null,
      ),
    );
    final result = await _fetchAllClassFeesUseCase.execute(null);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: ClassFeeStatus.failure,
        ),
      ),
      (classFees) => emit(
        state.copyWith(
          status: ClassFeeStatus.success,
          classFees: classFees,
        ),
      ),
    );
  }

  Future<void> _onGetClassFeeById(
    GetClassFeeById event,
    Emitter<ClassFeeState> emit,
  ) async {
    emit(state.copyWith(status: ClassFeeStatus.loading));
    final result = await _fetchClassFeeUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: ClassFeeStatus.failure,
        ),
      ),
      (classFee) => emit(
        state.copyWith(
          status: ClassFeeStatus.success,
          classFee: classFee,
        ),
      ),
    );
  }

  Future<void> _onDeleteClassFee(
    DeleteClassFee event,
    Emitter<ClassFeeState> emit,
  ) async {
    emit(state.copyWith(status: ClassFeeStatus.loading));
    final result = await _deleteClassFeeUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: ClassFeeStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: ClassFeeStatus.success,
        ),
      ),
    );
  }

  Future<void> _onUpdateClassFee(
    UpdateClassFee event,
    Emitter<ClassFeeState> emit,
  ) async {
    emit(state.copyWith(status: ClassFeeStatus.loading));
    final result = await _updateClassFeeUseCase.execute(event.classFee);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: ClassFeeStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: ClassFeeStatus.success,
        ),
      ),
    );
  }

  Future<void> _onCreateClassFee(
    CreateClassFee event,
    Emitter<ClassFeeState> emit,
  ) async {
    emit(state.copyWith(status: ClassFeeStatus.loading));
    final result = await _createClassFeeUseCase.execute(event.classFee);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: ClassFeeStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: ClassFeeStatus.success,
        ),
      ),
    );
  }
}
