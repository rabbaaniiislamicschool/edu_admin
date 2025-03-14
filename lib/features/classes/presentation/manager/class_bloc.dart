import 'dart:async';

import 'package:edu_admin/features/schools/domain/use_cases/fetch_school_usecase.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/use_cases/create_class_usecase.dart';
import '../../domain/use_cases/delete_class_usecase.dart';
import '../../domain/use_cases/fetch_all_classes_usecase.dart';
import '../../domain/use_cases/fetch_class_usecase.dart';
import '../../domain/use_cases/update_class_usecase.dart';
import 'class_event.dart';
import 'class_state.dart';

@injectable
class ClassBloc extends Bloc<ClassEvent, ClassState> {
  final CreateClassUseCase _createClassUseCase;
  final DeleteClassUseCase _deleteClassUseCase;
  final UpdateClassUseCase _updateClassUseCase;
  final FetchClassUseCase _fetchClassUseCase;
  final FetchAllClassUseCase _fetchAllClasssUseCase;

  ClassBloc(
    this._fetchClassUseCase,
    this._fetchAllClasssUseCase,
    this._createClassUseCase,
    this._deleteClassUseCase,
    this._updateClassUseCase,
  ) : super(ClassState.initial()) {
    on<FetchClass>(_onFetchClass);
    on<GetClassById>(_onGetClassById);
    on<DeleteClass>(_onDeleteClass);
    on<UpdateClass>(_onUpdateClass);
    on<CreateClass>(_onCreateClass);
  }

  Future<void> _onFetchClass(
    FetchClass event,
    Emitter<ClassState> emit,
  ) async {
    emit(
      state.copyWith(
        status: ClassStatus.loading,
        errorMessage: null,
        successMessage: null,
      ),
    );
    final result = await _fetchAllClasssUseCase.execute(null);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: ClassStatus.failure,
        ),
      ),
      (classes) => emit(
        state.copyWith(
          status: ClassStatus.success,
          classes: classes,
        ),
      ),
    );
  }

  Future<void> _onGetClassById(
    GetClassById event,
    Emitter<ClassState> emit,
  ) async {
    emit(state.copyWith(status: ClassStatus.loading));
    final result = await _fetchClassUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: ClassStatus.failure,
        ),
      ),
      (_class) => emit(
        state.copyWith(
          status: ClassStatus.success,
          classSelected: _class,
        ),
      ),
    );
  }

  Future<void> _onDeleteClass(
    DeleteClass event,
    Emitter<ClassState> emit,
  ) async {
    emit(state.copyWith(status: ClassStatus.loading));
    final result = await _deleteClassUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: ClassStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: ClassStatus.success,
        ),
      ),
    );
  }

  Future<void> _onUpdateClass(
    UpdateClass event,
    Emitter<ClassState> emit,
  ) async {
    emit(state.copyWith(status: ClassStatus.loading));
    final result = await _updateClassUseCase.execute(event.school);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: ClassStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: ClassStatus.success,
        ),
      ),
    );
  }

  Future<void> _onCreateClass(
    CreateClass event,
    Emitter<ClassState> emit,
  ) async {
    emit(state.copyWith(status: ClassStatus.loading));
    final result = await _createClassUseCase.execute(event.school);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: ClassStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: ClassStatus.success,
        ),
      ),
    );
  }
}
