import 'dart:async';


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/use_cases/create_student_class_usecase.dart';
import '../../domain/use_cases/delete_student_class_usecase.dart';
import '../../domain/use_cases/fetch_all_student_classes_usecase.dart';
import '../../domain/use_cases/fetch_student_class_usecase.dart';
import '../../domain/use_cases/update_student_class_usecase.dart';
import 'student_class_event.dart';
import 'student_class_state.dart';

@injectable
class StudentClassBloc extends Bloc<StudentClassEvent, StudentClassState> {
  final CreateStudentClassUseCase _createStudentClassUseCase;
  final DeleteStudentClassUseCase _deleteStudentClassUseCase;
  final UpdateStudentClassUseCase _updateStudentClassUseCase;
  final FetchStudentClassUseCase _fetchStudentClassUseCase;
  final FetchAllStudentClasssUseCase _fetchAllStudentClasssUseCase;

  StudentClassBloc(
    this._fetchStudentClassUseCase,
    this._fetchAllStudentClasssUseCase,
    this._createStudentClassUseCase,
    this._deleteStudentClassUseCase,
    this._updateStudentClassUseCase,
  ) : super(StudentClassState.initial()) {
    on<FetchStudentClasss>(_onFetchStudentClasss);
    on<GetStudentClassById>(_onGetStudentClassById);
    on<DeleteStudentClass>(_onDeleteStudentClass);
    on<UpdateStudentClass>(_onUpdateStudentClass);
    on<CreateStudentClass>(_onCreateStudentClass);
  }

  Future<void> _onFetchStudentClasss(
    FetchStudentClasss event,
    Emitter<StudentClassState> emit,
  ) async {
    emit(
      state.copyWith(
        status: StudentClassStatus.loading,
        errorMessage: null,
        successMessage: null,
      ),
    );
    final result = await _fetchAllStudentClasssUseCase.execute(null);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: StudentClassStatus.failure,
        ),
      ),
      (studentClasss) => emit(
        state.copyWith(
          status: StudentClassStatus.success,
          studentClasss: studentClasss,
        ),
      ),
    );
  }

  Future<void> _onGetStudentClassById(
    GetStudentClassById event,
    Emitter<StudentClassState> emit,
  ) async {
    emit(state.copyWith(status: StudentClassStatus.loading));
    final result = await _fetchStudentClassUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: StudentClassStatus.failure,
        ),
      ),
      (studentClass) => emit(
        state.copyWith(
          status: StudentClassStatus.success,
          studentClass: studentClass,
        ),
      ),
    );
  }

  Future<void> _onDeleteStudentClass(
    DeleteStudentClass event,
    Emitter<StudentClassState> emit,
  ) async {
    emit(state.copyWith(status: StudentClassStatus.loading));
    final result = await _deleteStudentClassUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: StudentClassStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: StudentClassStatus.success,
        ),
      ),
    );
  }

  Future<void> _onUpdateStudentClass(
    UpdateStudentClass event,
    Emitter<StudentClassState> emit,
  ) async {
    emit(state.copyWith(status: StudentClassStatus.loading));
    final result = await _updateStudentClassUseCase.execute(event.studentClass);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: StudentClassStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: StudentClassStatus.success,
        ),
      ),
    );
  }

  Future<void> _onCreateStudentClass(
    CreateStudentClass event,
    Emitter<StudentClassState> emit,
  ) async {
    emit(state.copyWith(status: StudentClassStatus.loading));
    final result = await _createStudentClassUseCase.execute(event.studentClass);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: StudentClassStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: StudentClassStatus.success,
        ),
      ),
    );
  }
}
