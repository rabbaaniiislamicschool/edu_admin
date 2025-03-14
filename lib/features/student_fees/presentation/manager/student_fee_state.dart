import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/student_fee.dart';
part 'student_fee_state.freezed.dart';

enum StudentFeeStatus { initial, loading, success, failure }


@freezed
abstract class StudentFeeState with _$StudentFeeState {
  const factory StudentFeeState({
    @Default(StudentFeeStatus.initial) StudentFeeStatus status,
    String? errorMessage,
    String? successMessage,
    List<StudentFee>? studentFees,
    StudentFee? studentFee,
  }) = _StudentFeeState;

  factory StudentFeeState.initial() => const StudentFeeState();
}