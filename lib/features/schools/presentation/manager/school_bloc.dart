import 'dart:async';

import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:edu_admin/features/schools/domain/use_cases/create_schools_usecase.dart';
import 'package:edu_admin/features/schools/domain/use_cases/fetch_school_usecase.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/create_school_usecase.dart';
import '../../domain/use_cases/delete_school_usecase.dart';
import '../../domain/use_cases/fetch_all_schools_usecase.dart';
import '../../domain/use_cases/update_school_usecase.dart';
import 'school_event.dart';
import 'school_state.dart';

@injectable
class SchoolBloc extends Bloc<SchoolEvent, SchoolState> {
  final CreateSchoolUseCase _createSchoolUseCase;
  final CreateSchoolsUseCase _createSchoolsUseCase;
  final DeleteSchoolUseCase _deleteSchoolUseCase;
  final UpdateSchoolUseCase _updateSchoolUseCase;
  final FetchSchoolUseCase _fetchSchoolUseCase;
  final FetchAllSchoolsUseCase _fetchAllSchoolsUseCase;

  SchoolBloc(
    this._fetchSchoolUseCase,
    this._fetchAllSchoolsUseCase,
    this._createSchoolUseCase,
    this._deleteSchoolUseCase,
    this._updateSchoolUseCase,
    this._createSchoolsUseCase,
  ) : super(SchoolState.initial()) {
    on<FetchSchools>(_onFetchSchools);
    on<GetSchoolById>(_onGetSchoolById);
    on<DeleteSchool>(_onDeleteSchool);
    on<UpdateSchool>(_onUpdateSchool);
    on<CreateSchool>(_onCreateSchool);
    on<CreateSchools>(_onCreateSchools);
  }

  Future<void> _onFetchSchools(
    FetchSchools event,
    Emitter<SchoolState> emit,
  ) async {
    emit(
      state.copyWith(
        status: SchoolStatus.loading,
        errorMessage: null,
        successMessage: null,
      ),
    );
    final result = await fetchAllSchools();
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: SchoolStatus.failure,
        ),
      ),
      (schools) =>
          emit(state.copyWith(status: SchoolStatus.success, schools: schools)),
    );
  }

  Future<void> _onGetSchoolById(
    GetSchoolById event,
    Emitter<SchoolState> emit,
  ) async {
    emit(state.copyWith(status: SchoolStatus.loading));
    final result = await _fetchSchoolUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: SchoolStatus.failure,
        ),
      ),
      (school) =>
          emit(state.copyWith(status: SchoolStatus.success, school: school)),
    );
  }

  Future<void> _onDeleteSchool(
    DeleteSchool event,
    Emitter<SchoolState> emit,
  ) async {
    emit(state.copyWith(status: SchoolStatus.loading));
    final result = await _deleteSchoolUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: SchoolStatus.failure,
        ),
      ),
      (_) => emit(state.copyWith(status: SchoolStatus.deleteSuccess)),
    );
  }

  Future<void> _onUpdateSchool(
    UpdateSchool event,
    Emitter<SchoolState> emit,
  ) async {
    emit(state.copyWith(status: SchoolStatus.loading));
    final result = await _updateSchoolUseCase.execute(event.school);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: SchoolStatus.failure,
        ),
      ),
      (_) => emit(state.copyWith(status: SchoolStatus.updateSuccess)),
    );
  }

  Future<void> _onCreateSchool(
    CreateSchool event,
    Emitter<SchoolState> emit,
  ) async {
    emit(state.copyWith(status: SchoolStatus.loading));
    final result = await _createSchoolUseCase.execute(event.school);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: SchoolStatus.failure,
        ),
      ),
      (_) => emit(state.copyWith(status: SchoolStatus.insertSuccess)),
    );
  }

  Future<void> _onCreateSchools(
    CreateSchools event,
    Emitter<SchoolState> emit,
  ) async {
    emit(state.copyWith(status: SchoolStatus.loading));
    final result = await _createSchoolsUseCase.execute(event.schools);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: SchoolStatus.failure,
        ),
      ),
      (_) => emit(state.copyWith(status: SchoolStatus.importSuccess)),
    );
  }

  Future<Either<Failure, List<School>>> fetchAllSchools() {
    return _fetchAllSchoolsUseCase.execute(null);
  }
}
