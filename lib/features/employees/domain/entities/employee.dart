import 'package:edu_admin/features/auth/domain/entities/user.dart';
import 'package:edu_admin/features/divisions/domain/entities/division.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/remote/models/employee_model.dart';

part 'employee.freezed.dart';

@freezed
abstract class Employee with _$Employee {
  factory Employee({
    String? employeeId,
    required String employeeNumberId,
    required String employeeName,
    int? divisionId,
    String? hiredDate,
    String? leaveDate,
    String? status,
    bool? isTeaching,
    String? createdAt,
    String? updatedAt,
    Division? division,
    User? user,
  }) = _Employee;
}

extension EmployeeX on Employee {
  EmployeeModel toModel() => EmployeeModel(
    employeeId: employeeId,
    employeeNumberId: employeeNumberId,
    divisionId: divisionId,
    employeeName: employeeName,
    hiredDate: hiredDate,
    leaveDate: leaveDate,
    status: status,
    isTeaching: isTeaching,
    createdAt: createdAt,
    updatedAt: updatedAt,
    division: division?.toModel(),
    user: user?.toModel(),
  );
}
