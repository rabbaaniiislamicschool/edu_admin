import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/employee.dart';

part 'employee_state.freezed.dart';

enum EmployeeStatus { initial, loading, success, failure }


@freezed
abstract class EmployeeState with _$EmployeeState {
  const factory EmployeeState({
    @Default(EmployeeStatus.initial) EmployeeStatus status,
    String? errorMessage,
    String? successMessage,
    List<Employee>? employees,
    List<Employee>? importedEmployees,
    Employee? employee,
  }) = _EmployeeState;

  factory EmployeeState.initial() => const EmployeeState();
}