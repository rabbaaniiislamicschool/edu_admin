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
      hiredDate: json['hired_date'] as String?,
      leaveDate: json['leave_date'] as String?,
      status: json['status'] as String?,
      isTeaching: json['is_teaching'] as bool?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      user:
          json['users'] == null
              ? null
              : UserModel.fromJson(json['users'] as Map<String, dynamic>),
      division:
          json['divisions'] == null
              ? null
              : DivisionModel.fromJson(
                json['divisions'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$EmployeeModelToJson(_EmployeeModel instance) =>
    <String, dynamic>{
      'employee_number_id': instance.employeeNumberId,
      'division_id': instance.divisionId,
      'employee_name': instance.employeeName,
      'hired_date': instance.hiredDate,
      'leave_date': instance.leaveDate,
      if (instance.status case final value?) 'status': value,
      'is_teaching': instance.isTeaching,
      if (instance.updatedAt case final value?) 'updated_at': value,
    };
