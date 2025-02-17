import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuthStatus() = CheckAuthStatusEvent;

  const factory AuthEvent.loginRequested({
    required String studentNumberId,
    required String password,
  }) = LoginRequested;

  const factory AuthEvent.logoutRequested() = LogoutRequested;
}
