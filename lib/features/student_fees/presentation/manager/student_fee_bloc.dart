import 'dart:async';


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/use_cases/create_student_fee_usecase.dart';
import '../../domain/use_cases/delete_student_fee_usecase.dart';
import '../../domain/use_cases/fetch_all_student_fees_usecase.dart';
import '../../domain/use_cases/fetch_student_fee_usecase.dart';
import '../../domain/use_cases/update_student_fee_usecase.dart';
import 'student_fee_event.dart';
import 'student_fee_state.dart';

@injectable
class StudentFeeBloc extends Bloc<StudentFeeEvent, StudentFeeState> {
  final CreateStudentFeeUseCase _createStudentFeeUseCase;
  final DeleteStudentFeeUseCase _deleteStudentFeeUseCase;
  final UpdateStudentFeeUseCase _updateStudentFeeUseCase;
  final FetchStudentFeeUseCase _fetchStudentFeeUseCase;
  final FetchAllStudentFeesUseCase _fetchAllStudentFeesUseCase;

  StudentFeeBloc(
    this._fetchStudentFeeUseCase,
    this._fetchAllStudentFeesUseCase,
    this._createStudentFeeUseCase,
    this._deleteStudentFeeUseCase,
    this._updateStudentFeeUseCase,
  ) : super(StudentFeeState.initial()) {
    on<FetchStudentFees>(_onFetchStudentFees);
    on<GetStudentFeeById>(_onGetStudentFeeById);
    on<DeleteStudentFee>(_onDeleteStudentFee);
    on<UpdateStudentFee>(_onUpdateStudentFee);
    on<CreateStudentFee>(_onCreateStudentFee);
  }

  Future<void> _onFetchStudentFees(
    FetchStudentFees event,
    Emitter<StudentFeeState> emit,
  ) async {
    emit(
      state.copyWith(
        status: StudentFeeStatus.loading,
        errorMessage: null,
        successMessage: null,
      ),
    );
    final result = await _fetchAllStudentFeesUseCase.execute(null);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: StudentFeeStatus.failure,
        ),
      ),
      (studentFees) => emit(
        state.copyWith(
          status: StudentFeeStatus.success,
          studentFees: studentFees,
        ),
      ),
    );
  }

  Future<void> _onGetStudentFeeById(
    GetStudentFeeById event,
    Emitter<StudentFeeState> emit,
  ) async {
    emit(state.copyWith(status: StudentFeeStatus.loading));
    final result = await _fetchStudentFeeUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: StudentFeeStatus.failure,
        ),
      ),
      (studentFee) => emit(
        state.copyWith(
          status: StudentFeeStatus.success,
          studentFee: studentFee,
        ),
      ),
    );
  }

  Future<void> _onDeleteStudentFee(
    DeleteStudentFee event,
    Emitter<StudentFeeState> emit,
  ) async {
    emit(state.copyWith(status: StudentFeeStatus.loading));
    final result = await _deleteStudentFeeUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: StudentFeeStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: StudentFeeStatus.success,
        ),
      ),
    );
  }

  Future<void> _onUpdateStudentFee(
    UpdateStudentFee event,
    Emitter<StudentFeeState> emit,
  ) async {
    emit(state.copyWith(status: StudentFeeStatus.loading));
    final result = await _updateStudentFeeUseCase.execute(event.studentFee);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: StudentFeeStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: StudentFeeStatus.success,
        ),
      ),
    );
  }

  Future<void> _onCreateStudentFee(
    CreateStudentFee event,
    Emitter<StudentFeeState> emit,
  ) async {
    emit(state.copyWith(status: StudentFeeStatus.loading));
    final result = await _createStudentFeeUseCase.execute(event.studentFee);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: StudentFeeStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: StudentFeeStatus.success,
        ),
      ),
    );
  }
}
