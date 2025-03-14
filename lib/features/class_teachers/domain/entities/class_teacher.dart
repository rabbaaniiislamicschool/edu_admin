import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/class_teacher_model.dart';

part 'class_teacher.freezed.dart';
part 'class_teacher.g.dart';

@freezed
abstract class ClassTeacher with _$ClassTeacher {
  factory ClassTeacher({
    required int classTeacherId,
    required int classId,
    required String teacherId,
    required int academicYearId,
    required String assignedDate,
  }) = _ClassTeacher;

  factory ClassTeacher.fromJson(Map<String, dynamic> json) =>
      _$ClassTeacherFromJson(json);
}

extension ClassTeacherX on ClassTeacher {
  ClassTeacherModel toModel() => ClassTeacherModel(
    classTeacherId: classTeacherId,
    classId: classId,
    teacherId: teacherId,
    academicYearId: academicYearId,
    assignedDate: assignedDate,
  );
}