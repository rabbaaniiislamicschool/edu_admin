import 'package:edu_admin/features/home/data/remote/models/student_model.dart';
import 'package:edu_admin/features/home/domain/entities/student_class.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'class_model.dart';

part 'student_class_model.freezed.dart';

part 'student_class_model.g.dart';

@freezed
class StudentClassModel with _$StudentClassModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory StudentClassModel(
      {required int studentClassId,
      required String studentId,
      required int classId,
      required int academicYearId,
      required String status,
      required String createdAt,
      required StudentModel students,
      required ClassModel classes}) = _StudentClassModel;

  factory StudentClassModel.fromJson(Map<String, dynamic> json) =>
      _$StudentClassModelFromJson(json);
}

extension StudentClassModelX on StudentClassModel {
  StudentClass toEntity() => StudentClass(
        studentClassId: studentClassId,
        studentId: studentId,
        classId: classId,
        academicYearId: academicYearId,
        status: status,
        createdAt: createdAt,
        student: students.toEntity(),
        classes: classes.toEntity(),
      );
}
