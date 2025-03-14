import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/use_cases/create_class_teacher_usecase.dart';
import '../../domain/use_cases/delete_class_teacher_usecase.dart';
import '../../domain/use_cases/fetch_all_class_teachers_usecase.dart';
import '../../domain/use_cases/fetch_class_teacher_usecase.dart';
import '../../domain/use_cases/update_class_teacher_usecase.dart';
import 'class_teacher_event.dart';
import 'class_teacher_state.dart';

@injectable
class ClassTeacherBloc extends Bloc<ClassTeacherEvent, ClassTeacherState> {
  final CreateClassTeacherUseCase _createClassTeacherUseCase;
  final DeleteClassTeacherUseCase _deleteClassTeacherUseCase;
  final UpdateClassTeacherUseCase _updateClassTeacherUseCase;
  final FetchClassTeacherUseCase _fetchClassTeacherUseCase;
  final FetchAllClassTeachersUseCase _fetchAllClassTeachersUseCase;

  ClassTeacherBloc(
    this._fetchClassTeacherUseCase,
    this._fetchAllClassTeachersUseCase,
    this._createClassTeacherUseCase,
    this._deleteClassTeacherUseCase,
    this._updateClassTeacherUseCase,
  ) : super(ClassTeacherState.initial()) {
    on<FetchClassTeachers>(_onFetchClassTeachers);
    on<GetClassTeacherById>(_onGetClassTeacherById);
    on<DeleteClassTeacher>(_onDeleteClassTeacher);
    on<UpdateClassTeacher>(_onUpdateClassTeacher);
    on<CreateClassTeacher>(_onCreateClassTeacher);
  }

  Future<void> _onFetchClassTeachers(
    FetchClassTeachers event,
    Emitter<ClassTeacherState> emit,
  ) async {
    emit(
      state.copyWith(
        status: ClassTeacherStatus.loading,
        errorMessage: null,
        successMessage: null,
      ),
    );
    final result = await _fetchAllClassTeachersUseCase.execute(null);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: ClassTeacherStatus.failure,
        ),
      ),
      (classTeachers) => emit(
        state.copyWith(
          status: ClassTeacherStatus.success,
          classTeachers: classTeachers,
        ),
      ),
    );
  }

  Future<void> _onGetClassTeacherById(
    GetClassTeacherById event,
    Emitter<ClassTeacherState> emit,
  ) async {
    emit(state.copyWith(status: ClassTeacherStatus.loading));
    final result = await _fetchClassTeacherUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: ClassTeacherStatus.failure,
        ),
      ),
      (classTeacher) => emit(
        state.copyWith(
          status: ClassTeacherStatus.success,
          classTeacher: classTeacher,
        ),
      ),
    );
  }

  Future<void> _onDeleteClassTeacher(
    DeleteClassTeacher event,
    Emitter<ClassTeacherState> emit,
  ) async {
    emit(state.copyWith(status: ClassTeacherStatus.loading));
    final result = await _deleteClassTeacherUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: ClassTeacherStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: ClassTeacherStatus.success,
        ),
      ),
    );
  }

  Future<void> _onUpdateClassTeacher(
    UpdateClassTeacher event,
    Emitter<ClassTeacherState> emit,
  ) async {
    emit(state.copyWith(status: ClassTeacherStatus.loading));
    final result = await _updateClassTeacherUseCase.execute(event.classTeacher);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: ClassTeacherStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: ClassTeacherStatus.success,
        ),
      ),
    );
  }

  Future<void> _onCreateClassTeacher(
    CreateClassTeacher event,
    Emitter<ClassTeacherState> emit,
  ) async {
    emit(state.copyWith(status: ClassTeacherStatus.loading));
    final result = await _createClassTeacherUseCase.execute(event.classTeacher);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: ClassTeacherStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: ClassTeacherStatus.success,
        ),
      ),
    );
  }
}
