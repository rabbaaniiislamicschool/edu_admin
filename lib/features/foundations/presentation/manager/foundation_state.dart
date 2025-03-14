import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/foundation.dart';

part 'foundation_state.freezed.dart';

enum FoundationStatus { initial, loading, failure, success, insertSuccess, updateSuccess, deleteSuccess, importSuccess }

@freezed
abstract class FoundationState with _$FoundationState {
  const factory FoundationState({
    @Default(FoundationStatus.initial) FoundationStatus status,
    String? errorMessage,
    List<Foundation>? foundations,
    Foundation? foundation,
  }) = _FoundationState;

  factory FoundationState.initial() => const FoundationState();
}