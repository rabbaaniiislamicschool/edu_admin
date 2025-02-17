// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_class_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentClassModelImpl _$$StudentClassModelImplFromJson(
  Map<String, dynamic> json,
) => _$StudentClassModelImpl(
  studentClassId: (json['student_class_id'] as num).toInt(),
  studentId: json['student_id'] as String,
  classId: (json['class_id'] as num).toInt(),
  academicYearId: (json['academic_year_id'] as num).toInt(),
  status: json['status'] as String,
  createdAt: json['created_at'] as String,
  students: StudentModel.fromJson(json['students'] as Map<String, dynamic>),
  classes: ClassModel.fromJson(json['classes'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$StudentClassModelImplToJson(
  _$StudentClassModelImpl instance,
) => <String, dynamic>{
  'student_class_id': instance.studentClassId,
  'student_id': instance.studentId,
  'class_id': instance.classId,
  'academic_year_id': instance.academicYearId,
  'status': instance.status,
  'created_at': instance.createdAt,
  'students': instance.students.toJson(),
  'classes': instance.classes.toJson(),
};
