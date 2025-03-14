import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/class_teacher.dart';
part 'class_teacher_state.freezed.dart';

enum ClassTeacherStatus { initial, loading, success, failure }


@freezed
abstract class ClassTeacherState with _$ClassTeacherState {
  const factory ClassTeacherState({
    @Default(ClassTeacherStatus.initial) ClassTeacherStatus status,
    String? errorMessage,
    String? successMessage,
    List<ClassTeacher>? classTeachers,
    ClassTeacher? classTeacher,
  }) = _ClassTeacherState;

  factory ClassTeacherState.initial() => const ClassTeacherState();
}