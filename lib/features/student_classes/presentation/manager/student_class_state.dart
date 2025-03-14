import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/student_class.dart';
part 'student_class_state.freezed.dart';

enum StudentClassStatus { initial, loading, success, failure }


@freezed
abstract class StudentClassState with _$StudentClassState {
  const factory StudentClassState({
    @Default(StudentClassStatus.initial) StudentClassStatus status,
    String? errorMessage,
    String? successMessage,
    List<StudentClass>? studentClasss,
    StudentClass? studentClass,
  }) = _StudentClassState;

  factory StudentClassState.initial() => const StudentClassState();
}