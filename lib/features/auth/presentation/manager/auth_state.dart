import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user.dart';

part 'auth_state.freezed.dart';

enum AuthStatus { initial, loading, authenticated, unauthenticated, failure }

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.initial) AuthStatus status,
    String? errorMessage,
    User? currentUser,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState();
}