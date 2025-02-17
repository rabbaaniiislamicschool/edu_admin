import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../auth/domain/entities/user.dart';

part 'student.freezed.dart';

@freezed
class Student with _$Student {
  const factory Student({
    required String studentId,
    required String studentNumberId,
    String? guardianName,
    String? guardianPhone,
    required DateTime createdAt,
    String? studentNationalId,
    DateTime? updatedAt,
    required int schoolId,
    required String status,
    required User user,
  }) = _Student;
}