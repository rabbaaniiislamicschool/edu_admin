import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/remote/models/employee_model.dart';

part 'employee.freezed.dart';
part 'employee.g.dart';

@freezed
abstract class Employee with _$Employee {
  factory Employee({
    String? employeeId,
    required String employeeNumberId,
    int? divisionId,
    required String employeeName,
    String? educationLevel,
    String? hiredDate,
    String? leaveDate,
    required String employmentStatus,
    String? position,
    required bool isTeaching,
    String? createdAt,
    String? updateAt,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
}

extension EmployeeX on Employee {
  EmployeeModel toModel() => EmployeeModel(
    employeeId: employeeId,
    employeeNumberId: employeeNumberId,
    divisionId: divisionId,
    employeeName: employeeName,
    educationLevel: educationLevel,
    hiredDate: hiredDate,
    leaveDate: leaveDate,
    employmentStatus: employmentStatus,
    position: position,
    isTeaching: isTeaching,
    createdAt: createdAt,
    updateAt: updateAt,
  );
}