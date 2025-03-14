// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmployeeModel _$EmployeeModelFromJson(Map<String, dynamic> json) =>
    _EmployeeModel(
      employeeId: json['employee_id'] as String?,
      employeeNumberId: json['employee_number_id'] as String,
      divisionId: (json['division_id'] as num?)?.toInt(),
      employeeName: json['employee_name'] as String,
      educationLevel: json['education_level'] as String?,
      hiredDate: json['hired_date'] as String?,
      leaveDate: json['leave_date'] as String?,
      employmentStatus: json['employment_status'] as String,
      position: json['position'] as String?,
      isTeaching: json['is_teaching'] as bool,
      createdAt: json['created_at'] as String?,
      updateAt: json['update_at'] as String?,
    );

Map<String, dynamic> _$EmployeeModelToJson(_EmployeeModel instance) =>
    <String, dynamic>{
      'employee_number_id': instance.employeeNumberId,
      'division_id': instance.divisionId,
      'employee_name': instance.employeeName,
      'education_level': instance.educationLevel,
      'hired_date': instance.hiredDate,
      if (instance.leaveDate case final value?) 'leave_date': value,
      'employment_status': instance.employmentStatus,
      'position': instance.position,
      'is_teaching': instance.isTeaching,
      if (instance.updateAt case final value?) 'update_at': value,
    };
