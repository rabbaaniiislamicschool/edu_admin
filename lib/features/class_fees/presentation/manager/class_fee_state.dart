import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/class_fee.dart';
part 'class_fee_state.freezed.dart';

enum ClassFeeStatus { initial, loading, success, failure }


@freezed
abstract class ClassFeeState with _$ClassFeeState {
  const factory ClassFeeState({
    @Default(ClassFeeStatus.initial) ClassFeeStatus status,
    String? errorMessage,
    String? successMessage,
    List<ClassFee>? classFees,
    ClassFee? classFee,
  }) = _ClassFeeState;

  factory ClassFeeState.initial() => const ClassFeeState();
}