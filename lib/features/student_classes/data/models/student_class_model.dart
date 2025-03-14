import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/student_class.dart';

part 'student_class_model.freezed.dart';
part 'student_class_model.g.dart';

@freezed
abstract class StudentClassModel with _$StudentClassModel {
  const factory StudentClassModel({
    @JsonKey(name: 'student_class_id', includeToJson: false) required int studentClassId,
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'class_id') required int classId,
    @JsonKey(name: 'academic_year_id') required int academicYearId,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'created_at', includeToJson: false) required String createdAt,
  }) = _StudentClassModel;

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
  );
}