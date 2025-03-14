// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_teacher_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClassTeacherModel _$ClassTeacherModelFromJson(Map<String, dynamic> json) =>
    _ClassTeacherModel(
      classTeacherId: (json['class_teacher_id'] as num).toInt(),
      classId: (json['class_id'] as num).toInt(),
      teacherId: json['teacher_id'] as String,
      academicYearId: (json['academic_year_id'] as num).toInt(),
      assignedDate: json['assigned_date'] as String,
    );

Map<String, dynamic> _$ClassTeacherModelToJson(_ClassTeacherModel instance) =>
    <String, dynamic>{
      'class_id': instance.classId,
      'teacher_id': instance.teacherId,
      'academic_year_id': instance.academicYearId,
      'assigned_date': instance.assignedDate,
    };
