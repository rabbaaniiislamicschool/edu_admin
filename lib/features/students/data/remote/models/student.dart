import 'package:freezed_annotation/freezed_annotation.dart';
import '../../local/models/student_model.dart';

part 'student.freezed.dart';
part 'student.g.dart';

@freezed
abstract class Student with _$Student {
  factory Student({
    String? studentId,
    required String studentNumberId,
    required String guardianName,
    required String guardianPhone,
    String? createdAt,
    String? updatedAt,
    String? studentNationalId,
    required int schoolId,
    String? status,
  }) = _Student;

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
}

extension StudentX on Student {
  StudentModel toModel() => StudentModel(
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