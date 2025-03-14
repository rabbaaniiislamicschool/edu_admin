// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudentClass _$StudentClassFromJson(Map<String, dynamic> json) =>
    _StudentClass(
      studentClassId: (json['studentClassId'] as num).toInt(),
      studentId: json['studentId'] as String,
      classId: (json['classId'] as num).toInt(),
      academicYearId: (json['academicYearId'] as num).toInt(),
      status: json['status'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$StudentClassToJson(_StudentClass instance) =>
    <String, dynamic>{
      'studentClassId': instance.studentClassId,
      'studentId': instance.studentId,
      'classId': instance.classId,
      'academicYearId': instance.academicYearId,
      'status': instance.status,
      'createdAt': instance.createdAt,
    };
