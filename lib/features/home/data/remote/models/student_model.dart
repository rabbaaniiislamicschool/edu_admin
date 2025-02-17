import 'package:edu_admin/features/home/domain/entities/student.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../auth/data/remote/models/user_model.dart';

part 'student_model.freezed.dart';

part 'student_model.g.dart';

@freezed
class StudentModel with _$StudentModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory StudentModel({
    required String studentId,
    required String studentNumberId,
    String? guardianName,
    String? guardianPhone,
    required DateTime createdAt,
    String? studentNationalId,
    DateTime? updatedAt,
    required int schoolId,
    required String status,
    required UserModel users,
  }) = _StudentModel;

  factory StudentModel.fromJson(Map<String, dynamic> json) =>
      _$StudentModelFromJson(json);
}

extension StudentModelX on StudentModel {
  Student toEntity() => Student(
        studentId: studentId,
        studentNumberId: studentNumberId,
        createdAt: createdAt,
        schoolId: schoolId,
        status: status,
        user: users.toEntity(),
      );
}
