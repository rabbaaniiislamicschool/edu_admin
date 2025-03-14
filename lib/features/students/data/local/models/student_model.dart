import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../remote/models/student.dart';

part 'student_model.freezed.dart';
part 'student_model.g.dart';

@freezed
abstract class StudentModel with _$StudentModel {
  const factory StudentModel({
    @JsonKey(name: 'student_id', includeToJson: false) String? studentId,
    @JsonKey(name: 'student_number_id') required String studentNumberId,
    @JsonKey(name: 'guardian_name') required String guardianName,
    @JsonKey(name: 'guardian_phone') required String guardianPhone,
    @JsonKey(name: 'created_at', includeToJson: false) String? createdAt,
    @JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt,
    @JsonKey(name: 'student_national_id') String? studentNationalId,
    @JsonKey(name: 'school_id') required int schoolId,
    String? status,
  }) = _StudentModel;

  factory StudentModel.fromJson(Map<String, dynamic> json) =>
      _$StudentModelFromJson(json);
}

extension StudentModelX on StudentModel {
  Student toEntity() => Student(
    studentId: studentId,
    studentNumberId: studentNumberId,
    guardianName: guardianName,
    guardianPhone: guardianPhone,
    createdAt: createdAt,
    updatedAt: updatedAt,
    studentNationalId: studentNationalId,
    schoolId: schoolId,
    status: status,
  );
}