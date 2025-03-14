// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Employee _$EmployeeFromJson(Map<String, dynamic> json) => _Employee(
  employeeId: json['employeeId'] as String?,
  employeeNumberId: json['employeeNumberId'] as String,
  divisionId: (json['divisionId'] as num?)?.toInt(),
  employeeName: json['employeeName'] as String,
  educationLevel: json['educationLevel'] as String?,
  hiredDate: json['hiredDate'] as String?,
  leaveDate: json['leaveDate'] as String?,
  employmentStatus: json['employmentStatus'] as String,
  position: json['position'] as String?,
  isTeaching: json['isTeaching'] as bool,
  createdAt: json['createdAt'] as String?,
  updateAt: json['updateAt'] as String?,
);

Map<String, dynamic> _$EmployeeToJson(_Employee instance) => <String, dynamic>{
  'employeeId': instance.employeeId,
  'employeeNumberId': instance.employeeNumberId,
  'divisionId': instance.divisionId,
  'employeeName': instance.employeeName,
  'educationLevel': instance.educationLevel,
  'hiredDate': instance.hiredDate,
  'leaveDate': instance.leaveDate,
  'employmentStatus': instance.employmentStatus,
  'position': instance.position,
  'isTeaching': instance.isTeaching,
  'createdAt': instance.createdAt,
  'updateAt': instance.updateAt,
};
