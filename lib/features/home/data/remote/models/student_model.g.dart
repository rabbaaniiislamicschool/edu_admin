// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentModelImpl _$$StudentModelImplFromJson(Map<String, dynamic> json) =>
    _$StudentModelImpl(
      studentId: json['student_id'] as String,
      studentNumberId: json['student_number_id'] as String,
      guardianName: json['guardian_name'] as String?,
      guardianPhone: json['guardian_phone'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      studentNationalId: json['student_national_id'] as String?,
      updatedAt:
          json['updated_at'] == null
              ? null
              : DateTime.parse(json['updated_at'] as String),
      schoolId: (json['school_id'] as num).toInt(),
      status: json['status'] as String,
      users: UserModel.fromJson(json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StudentModelImplToJson(_$StudentModelImpl instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'student_number_id': instance.studentNumberId,
      'guardian_name': instance.guardianName,
      'guardian_phone': instance.guardianPhone,
      'created_at': instance.createdAt.toIso8601String(),
      'student_national_id': instance.studentNationalId,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'school_id': instance.schoolId,
      'status': instance.status,
      'users': instance.users.toJson(),
    };
