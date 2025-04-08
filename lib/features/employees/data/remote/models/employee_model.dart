import 'package:edu_admin/features/auth/data/remote/models/user_model.dart';
import 'package:edu_admin/features/divisions/data/models/division_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/employee.dart';
part 'employee_model.freezed.dart';
part 'employee_model.g.dart';

@freezed
abstract class EmployeeModel with _$EmployeeModel {
  const factory EmployeeModel({
    @JsonKey(name: 'employee_id', includeToJson: false) String? employeeId,
    @JsonKey(name: 'employee_number_id') required String employeeNumberId,
    @JsonKey(name: 'division_id') int? divisionId,
    @JsonKey(name: 'employee_name') required String employeeName,
    @JsonKey(name: 'hired_date') String? hiredDate,
    @JsonKey(name: 'leave_date') String? leaveDate,
    @JsonKey(name: 'status', includeIfNull: false) String? status,
    @JsonKey(name: 'is_teaching') bool? isTeaching,
    @JsonKey(name: 'created_at', includeToJson: false) String? createdAt,
    @JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt,
    @JsonKey(name: 'users', includeToJson: false) UserModel? user,
    @JsonKey(name: 'divisions', includeToJson: false) DivisionModel? division,
  }) = _EmployeeModel;

  factory EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeModelFromJson(json);
}

extension EmployeeModelX on EmployeeModel {
  Employee toEntity() => Employee(
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
    division: division?.toEntity(),
    user: user?.toEntity(),
  );
}
