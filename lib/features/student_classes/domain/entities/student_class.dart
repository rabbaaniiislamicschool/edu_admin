import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/student_class_model.dart';

part 'student_class.freezed.dart';
part 'student_class.g.dart';

@freezed
abstract class StudentClass with _$StudentClass {
  factory StudentClass({
    required int studentClassId,
    required String studentId,
    required int classId,
    required int academicYearId,
    required String status,
    required String createdAt,
  }) = _StudentClass;

  factory StudentClass.fromJson(Map<String, dynamic> json) =>
      _$StudentClassFromJson(json);
}

extension StudentClassX on StudentClass {
  StudentClassModel toModel() => StudentClassModel(
    studentClassId: studentClassId,
    studentId: studentId,
    classId: classId,
    academicYearId: academicYearId,
    status: status,
    createdAt: createdAt,
  );
}