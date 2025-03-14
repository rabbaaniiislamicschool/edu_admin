import 'dart:async';


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/create_employee_usecase.dart';
import '../../domain/use_cases/delete_employee_usecase.dart';
import '../../domain/use_cases/fetch_all_employees_usecase.dart';
import '../../domain/use_cases/fetch_employee_usecase.dart';
import '../../domain/use_cases/import_employee_users_usecase.dart';
import '../../domain/use_cases/update_employee_usecase.dart';
import 'employee_event.dart';
import 'employee_state.dart';

@injectable
class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  final CreateEmployeeUseCase _createEmployeeUseCase;
  final DeleteEmployeeUseCase _deleteEmployeeUseCase;
  final UpdateEmployeeUseCase _updateEmployeeUseCase;
  final FetchEmployeeUseCase _fetchEmployeeUseCase;
  final FetchAllEmployeesUseCase _fetchAllEmployeesUseCase;
  final ImportEmployeeUsersUseCase _importEmployeeUsersUseCase;

  EmployeeBloc(
    this._fetchEmployeeUseCase,
    this._fetchAllEmployeesUseCase,
    this._createEmployeeUseCase,
    this._deleteEmployeeUseCase,
    this._updateEmployeeUseCase,
    this._importEmployeeUsersUseCase,
  ) : super(EmployeeState.initial()) {
    on<FetchEmployees>(_onFetchEmployees);
    on<GetEmployeeById>(_onGetEmployeeById);
    on<DeleteEmployee>(_onDeleteEmployee);
    on<UpdateEmployee>(_onUpdateEmployee);
    on<CreateEmployee>(_onCreateEmployee);
    on<ImportEmployeeUsers>(_onImportEmployeeUsers);
  }

  Future<void> _onFetchEmployees(
    FetchEmployees event,
    Emitter<EmployeeState> emit,
  ) async {
    emit(
      state.copyWith(
        status: EmployeeStatus.loading,
        errorMessage: null,
        successMessage: null,
      ),
    );
    final result = await _fetchAllEmployeesUseCase.execute(null);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: EmployeeStatus.failure,
        ),
      ),
      (data) => emit(
        state.copyWith(
          status: EmployeeStatus.success,
          employees: data,
        ),
      ),
    );
  }

  Future<void> _onGetEmployeeById(
    GetEmployeeById event,
    Emitter<EmployeeState> emit,
  ) async {
    emit(state.copyWith(status: EmployeeStatus.loading));
    final result = await _fetchEmployeeUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: EmployeeStatus.failure,
        ),
      ),
      (data) => emit(
        state.copyWith(status: EmployeeStatus.success, employee: data),
      ),
    );
  }

  Future<void> _onDeleteEmployee(
    DeleteEmployee event,
    Emitter<EmployeeState> emit,
  ) async {
    emit(state.copyWith(status: EmployeeStatus.loading));
    final result = await _deleteEmployeeUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: EmployeeStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: EmployeeStatus.success,
        ),
      ),
    );
  }

  Future<void> _onUpdateEmployee(
    UpdateEmployee event,
    Emitter<EmployeeState> emit,
  ) async {
    emit(state.copyWith(status: EmployeeStatus.loading));
    final result = await _updateEmployeeUseCase.execute(event.foundation);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: EmployeeStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: EmployeeStatus.success,
        ),
      ),
    );
  }

  Future<void> _onCreateEmployee(
    CreateEmployee event,
    Emitter<EmployeeState> emit,
  ) async {
    emit(state.copyWith(status: EmployeeStatus.loading));
    final result = await _createEmployeeUseCase.execute(event.foundation);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: EmployeeStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: EmployeeStatus.success,
        ),
      ),
    );
  }

  Future<void> _onImportEmployeeUsers(
    ImportEmployeeUsers event,
    Emitter<EmployeeState> emit,
  ) async {
    emit(
      state.copyWith(status: EmployeeStatus.loading, importedEmployees: null),
    );
    final result = await _importEmployeeUsersUseCase.execute(
      event.importEmployee,
    );
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: EmployeeStatus.failure,
        ),
      ),
      (data) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: EmployeeStatus.success,
          importedEmployees: data,
        ),
      ),
    );
  }
}
