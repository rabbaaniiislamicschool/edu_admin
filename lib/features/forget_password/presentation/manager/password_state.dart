import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../auth/domain/entities/user.dart';


part 'password_state.freezed.dart';

@freezed
abstract class PasswordState with _$PasswordState {

  const factory PasswordState({
    required bool isLoading,
    String? errorMessage,
    bool? isUpdateSuccess,
    User? updatedUser,
  }) = _PasswordState;

  factory PasswordState.initial() => PasswordState(
        isLoading: false,
        errorMessage: null,
        isUpdateSuccess: false,
        updatedUser: null,
      );
}
