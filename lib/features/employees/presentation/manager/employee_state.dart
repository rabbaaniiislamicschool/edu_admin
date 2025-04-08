import 'package:edu_admin/features/divisions/domain/entities/division.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/employee.dart';

part 'employee_state.freezed.dart';

enum EmployeeStatus {
  initial,
  loading,
  success,
  failure,
  insertSuccess,
  updateSuccess,
  deleteSuccess,
  importSuccess,
}

@freezed
abstract class EmployeeState with _$EmployeeState {
  const factory EmployeeState({
    @Default(EmployeeStatus.initial) EmployeeStatus status,
    String? errorMessage,
    String? successMessage,
    List<Employee>? employees,
    Employee? employee,
  }) = _EmployeeState;

  factory EmployeeState.initial() => const EmployeeState();
}
