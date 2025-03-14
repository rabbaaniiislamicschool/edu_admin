import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/class_teacher.dart';

part 'class_teacher_event.freezed.dart';

@freezed
abstract class ClassTeacherEvent with _$ClassTeacherEvent {
  const factory ClassTeacherEvent.fetchClassTeachers() = FetchClassTeachers;
  const factory ClassTeacherEvent.getClassTeacherById(int id) = GetClassTeacherById;
  const factory ClassTeacherEvent.createClassTeacher(ClassTeacher classTeacher) = CreateClassTeacher;
  const factory ClassTeacherEvent.deleteClassTeacher(int id) = DeleteClassTeacher;
  const factory ClassTeacherEvent.updateClassTeacher(ClassTeacher classTeacher) = UpdateClassTeacher;
}