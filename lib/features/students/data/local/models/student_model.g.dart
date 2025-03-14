// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudentModel _$StudentModelFromJson(Map<String, dynamic> json) =>
    _StudentModel(
      studentId: json['student_id'] as String?,
      studentNumberId: json['student_number_id'] as String,
      guardianName: json['guardian_name'] as String,
      guardianPhone: json['guardian_phone'] as String,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      studentNationalId: json['student_national_id'] as String?,
      schoolId: (json['school_id'] as num).toInt(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$StudentModelToJson(_StudentModel instance) =>
    <String, dynamic>{
      'student_number_id': instance.studentNumberId,
      'guardian_name': instance.guardianName,
      'guardian_phone': instance.guardianPhone,
      if (instance.updatedAt case final value?) 'updated_at': value,
      'student_national_id': instance.studentNationalId,
      'school_id': instance.schoolId,
      'status': instance.status,
    };
