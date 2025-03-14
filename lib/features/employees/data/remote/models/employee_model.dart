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
    @JsonKey(name: 'education_level') String? educationLevel,
    @JsonKey(name: 'hired_date') String? hiredDate,
    @JsonKey(name: 'leave_date', includeIfNull: false) String? leaveDate,
    @JsonKey(name: 'employment_status') required String employmentStatus,
    String? position,
    @JsonKey(name: 'is_teaching') required bool isTeaching,
    @JsonKey(name: 'created_at', includeToJson: false) String? createdAt,
    @JsonKey(name: 'update_at', includeIfNull: false) String? updateAt,
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