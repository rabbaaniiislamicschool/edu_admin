import 'package:edu_admin/features/employees/domain/entities/user_employee.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_event.freezed.dart';

@freezed
abstract class EmployeeEvent with _$EmployeeEvent {
  const factory EmployeeEvent.fetchEmployees() = FetchEmployees;
  const factory EmployeeEvent.getEmployeeById(String id) = GetEmployeeById;
  const factory EmployeeEvent.createUserEmployees(
    List<UserEmployee> userEmployees,
    String defaultPassword,
  ) = CreateUserEmployees;

  const factory EmployeeEvent.createUserEmployee(
    UserEmployee userEmployee,
    String defaultPassword,
  ) = CreateUserEmployee;

  const factory EmployeeEvent.deleteEmployee(String id) = DeleteEmployee;
  const factory EmployeeEvent.updateUserEmployee(
    UserEmployee userEmployee,
    String? resetPassword,
  ) = UpdateUserEmployee;
}
