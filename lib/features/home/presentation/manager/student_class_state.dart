import 'package:edu_admin/features/home/domain/entities/student.dart';
import 'package:edu_admin/features/home/domain/entities/student_class.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../auth/domain/entities/user.dart';
import '../../domain/entities/class.dart';

part 'student_class_state.freezed.dart';

@freezed
class StudentClassState with _$StudentClassState {
  const factory StudentClassState({
    required bool isLoading,
    String? errorMessage,
    StudentClass? studentClass,
    User? currentUser,
    List<User>? allUsers,
  }) = _StudentClassState;

  factory StudentClassState.initial() => StudentClassState(
        isLoading: false,
        errorMessage: null,
        currentUser: null,
        studentClass: null,
        allUsers: null,
      );
}
