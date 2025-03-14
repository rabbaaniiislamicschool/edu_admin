// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Student _$StudentFromJson(Map<String, dynamic> json) => _Student(
  studentId: json['studentId'] as String?,
  studentNumberId: json['studentNumberId'] as String,
  guardianName: json['guardianName'] as String,
  guardianPhone: json['guardianPhone'] as String,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  studentNationalId: json['studentNationalId'] as String?,
  schoolId: (json['schoolId'] as num).toInt(),
  status: json['status'] as String?,
);

Map<String, dynamic> _$StudentToJson(_Student instance) => <String, dynamic>{
  'studentId': instance.studentId,
  'studentNumberId': instance.studentNumberId,
  'guardianName': instance.guardianName,
  'guardianPhone': instance.guardianPhone,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'studentNationalId': instance.studentNationalId,
  'schoolId': instance.schoolId,
  'status': instance.status,
};
