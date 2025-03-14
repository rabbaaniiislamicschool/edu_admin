import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/student_class.dart';

part 'student_class_event.freezed.dart';

@freezed
abstract class StudentClassEvent with _$StudentClassEvent {
  const factory StudentClassEvent.fetchStudentClasss() = FetchStudentClasss;
  const factory StudentClassEvent.getStudentClassById(int id) = GetStudentClassById;
  const factory StudentClassEvent.createStudentClass(StudentClass studentClass) = CreateStudentClass;
  const factory StudentClassEvent.deleteStudentClass(int id) = DeleteStudentClass;
  const factory StudentClassEvent.updateStudentClass(StudentClass studentClass) = UpdateStudentClass;
}