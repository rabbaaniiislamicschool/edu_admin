import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_class_event.freezed.dart';

@freezed
class StudentClassEvent with _$StudentClassEvent {
  const factory StudentClassEvent.load() = _LoadStudentClass;
  const factory StudentClassEvent.getCurrentUser() = _GetCurrentUser;
  const factory StudentClassEvent.getAllUsers() = _GetAllUsers;
}