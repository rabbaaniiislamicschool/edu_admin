// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_teacher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClassTeacher _$ClassTeacherFromJson(Map<String, dynamic> json) =>
    _ClassTeacher(
      classTeacherId: (json['classTeacherId'] as num).toInt(),
      classId: (json['classId'] as num).toInt(),
      teacherId: json['teacherId'] as String,
      academicYearId: (json['academicYearId'] as num).toInt(),
      assignedDate: json['assignedDate'] as String,
    );

Map<String, dynamic> _$ClassTeacherToJson(_ClassTeacher instance) =>
    <String, dynamic>{
      'classTeacherId': instance.classTeacherId,
      'classId': instance.classId,
      'teacherId': instance.teacherId,
      'academicYearId': instance.academicYearId,
      'assignedDate': instance.assignedDate,
    };
