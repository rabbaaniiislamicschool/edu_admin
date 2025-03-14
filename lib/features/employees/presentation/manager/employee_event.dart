import 'package:edu_admin/features/employees/domain/entities/import_employee.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/employee.dart';

part 'employee_event.freezed.dart';

@freezed
abstract class EmployeeEvent with _$EmployeeEvent {
  const factory EmployeeEvent.fetchEmployees() = FetchEmployees;
  const factory EmployeeEvent.getEmployeeById(String id) = GetEmployeeById;
  const factory EmployeeEvent.createEmployee(Employee foundation) = CreateEmployee;
  const factory EmployeeEvent.deleteEmployee(String id) = DeleteEmployee;
  const factory EmployeeEvent.updateEmployee(Employee foundation) = UpdateEmployee;
  const factory EmployeeEvent.importEmployeeUsers(ImportEmployee importEmployee) = ImportEmployeeUsers;
}