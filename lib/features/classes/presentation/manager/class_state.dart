import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/class.dart';

part 'class_state.freezed.dart';

enum ClassStatus { initial, loading, success, failure }


@freezed
abstract class ClassState with _$ClassState {
  const factory ClassState({
    @Default(ClassStatus.initial) ClassStatus status,
    String? errorMessage,
    String? successMessage,
    List<Class>? classes,
    Class? classSelected,
  }) = _ClassState;

  factory ClassState.initial() => const ClassState();
}