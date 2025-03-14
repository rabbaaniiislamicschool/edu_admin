import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/class_teacher.dart';

part 'class_teacher_model.freezed.dart';
part 'class_teacher_model.g.dart';

@freezed
abstract class ClassTeacherModel with _$ClassTeacherModel {
  const factory ClassTeacherModel({
    @JsonKey(name: 'class_teacher_id', includeToJson: false) required int classTeacherId,
    @JsonKey(name: 'class_id') required int classId,
    @JsonKey(name: 'teacher_id') required String teacherId,
    @JsonKey(name: 'academic_year_id') required int academicYearId,
    @JsonKey(name: 'assigned_date') required String assignedDate,
  }) = _ClassTeacherModel;

  factory ClassTeacherModel.fromJson(Map<String, dynamic> json) =>
      _$ClassTeacherModelFromJson(json);
}

extension ClassTeacherModelX on ClassTeacherModel {
  ClassTeacher toEntity() => ClassTeacher(
    classTeacherId: classTeacherId,
    classId: classId,
    teacherId: teacherId,
    academicYearId: academicYearId,
    assignedDate: assignedDate,
  );
}