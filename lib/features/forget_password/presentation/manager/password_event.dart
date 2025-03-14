import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_event.freezed.dart';

@freezed
abstract class PasswordEvent with _$PasswordEvent {
  const factory PasswordEvent.forget({
    required String studentNumberId,
    required String dob,
    String? newPassword,
  }) = ForgetPasswordEvent;

  const factory PasswordEvent.update({
    required String newPassword,
  }) = UpdatePasswordEvent;
}