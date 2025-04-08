import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuthStatus() = CheckAuthStatusEvent;

  const factory AuthEvent.loginRequested({
    required String phoneNumber,
    required String password,
  }) = LoginRequested;

  const factory AuthEvent.logoutRequested() = LogoutRequested;
}
