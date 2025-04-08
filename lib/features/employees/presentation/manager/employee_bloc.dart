import 'dart:async';

import 'package:edu_admin/features/employees/domain/use_cases/create_user_employees_usecase%20copy.dart';
import 'package:edu_admin/features/schools/domain/use_cases/fetch_all_schools_usecase.dart';
import 'package:edu_admin/features/schools/presentation/manager/school_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/create_user_employee_usecase.dart';
import '../../domain/use_cases/delete_employee_usecase.dart';
import '../../domain/use_cases/fetch_all_employees_usecase.dart';
import '../../domain/use_cases/fetch_employee_usecase.dart';
import '../../domain/use_cases/update_user_employee_usecase.dart';
import 'employee_event.dart';
import 'employee_state.dart';

@injectable
class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  final CreateUserEmployeesUseCase _createUserEmployeesUseCase;
  final CreateUserEmployeeUseCase _createUserEmployeeUseCase;
  final DeleteEmployeeUseCase _deleteEmployeeUseCase;
  final UpdateUserEmployeeUseCase _updateUserEmployeeUseCase;
  final FetchEmployeeUseCase _fetchEmployeeUseCase;
  final FetchAllEmployeesUseCase _fetchAllEmployeesUseCase;

  EmployeeBloc(
    this._fetchEmployeeUseCase,
    this._fetchAllEmployeesUseCase,
    this._createUserEmployeesUseCase,
    this._deleteEmployeeUseCase,
    this._updateUserEmployeeUseCase,
    this._createUserEmployeeUseCase,
  ) : super(EmployeeState.initial()) {
    on<FetchEmployees>(_onFetchEmployees);
    on<GetEmployeeById>(_onGetEmployeeById);
    on<DeleteEmployee>(_onDeleteEmployee);
    on<UpdateUserEmployee>(_onUpdateUserEmployee);
    on<CreateUserEmployees>(_onCreateUserEmployees);
    on<CreateUserEmployee>(_onCreateUserEmployee);
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
      (data) =>
          emit(state.copyWith(status: EmployeeStatus.success, employees: data)),
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
      (data) =>
          emit(state.copyWith(status: EmployeeStatus.success, employee: data)),
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
      (_) => emit(state.copyWith(status: EmployeeStatus.deleteSuccess)),
    );
  }

  Future<void> _onUpdateUserEmployee(
    UpdateUserEmployee event,
    Emitter<EmployeeState> emit,
  ) async {
    emit(state.copyWith(status: EmployeeStatus.loading));
    final result = await _updateUserEmployeeUseCase.execute(
      UpdateUserEmployeeParams(event.userEmployee, event.resetPassword),
    );
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: EmployeeStatus.failure,
        ),
      ),
      (_) => emit(state.copyWith(status: EmployeeStatus.updateSuccess)),
    );
  }

  Future<void> _onCreateUserEmployees(
    CreateUserEmployees event,
    Emitter<EmployeeState> emit,
  ) async {
    emit(state.copyWith(status: EmployeeStatus.loading));
    final result = await _createUserEmployeesUseCase.execute(
      CreateUserEmployeesParams(
        userEmployees: event.userEmployees,
        defaultPassword: event.defaultPassword,
      ),
    );
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: EmployeeStatus.failure,
        ),
      ),
      (_) => emit(state.copyWith(status: EmployeeStatus.importSuccess)),
    );
  }

  Future<void> _onCreateUserEmployee(
    CreateUserEmployee event,
    Emitter<EmployeeState> emit,
  ) async {
    emit(state.copyWith(status: EmployeeStatus.loading));
    final result = await _createUserEmployeeUseCase.execute(
      CreateUserEmployeeParams(
        userEmployees: event.userEmployee,
        defaultPassword: event.defaultPassword,
      ),
    );
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: EmployeeStatus.failure,
        ),
      ),
      (_) => emit(state.copyWith(status: EmployeeStatus.insertSuccess)),
    );
  }
}
