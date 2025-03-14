// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_class_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudentClassModel _$StudentClassModelFromJson(Map<String, dynamic> json) =>
    _StudentClassModel(
      studentClassId: (json['student_class_id'] as num).toInt(),
      studentId: json['student_id'] as String,
      classId: (json['class_id'] as num).toInt(),
      academicYearId: (json['academic_year_id'] as num).toInt(),
      status: json['status'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$StudentClassModelToJson(_StudentClassModel instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'class_id': instance.classId,
      'academic_year_id': instance.academicYearId,
      'status': instance.status,
    };
