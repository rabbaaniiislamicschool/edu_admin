import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import '../../domain/use_cases/check_auth_status_usecase.dart';
import '../../domain/use_cases/login_usecase.dart';
import '../../domain/use_cases/logout_usecase.dart';
import 'auth_event.dart';
import 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final CheckAuthStatusUseCase _checkAuthStatusUseCase;
  final LoginUseCase _loginUseCase;
  final LogoutUseCase _logoutUseCase;

  AuthBloc(
    this._checkAuthStatusUseCase,
    this._loginUseCase,
    this._logoutUseCase,
  ) : super(AuthState.initial()) {
    on<CheckAuthStatusEvent>(_onCheckAuthStatus);
    on<LoginRequested>(_onLoginRequested);
    on<LogoutRequested>(_onLogoutRequested);
  }

  Future<void> _onCheckAuthStatus(
    CheckAuthStatusEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: AuthStatus.loading));
    final result = await _checkAuthStatusUseCase.execute(NoParams());
    result.fold(
      (failure) {
        emit(state.copyWith(
          status: AuthStatus.failure,
        ));
      },
      (isAuthenticated) {
        emit(state.copyWith(
          status: isAuthenticated
              ? AuthStatus.authenticated
              : AuthStatus.unauthenticated,
        ));
      },
    );
  }

  Future<void> _onLoginRequested(
    LoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: AuthStatus.loading, errorMessage: null));
    final result = await _loginUseCase.execute(LoginParams(
      studentNumberId: event.studentNumberId,
      password: event.password,
    ));

    result.fold(
      (failure) {
        emit(state.copyWith(
          status: AuthStatus.failure,
          errorMessage: failure.message,
        ));
      },
      (user) {
        emit(state.copyWith(
          status: AuthStatus.authenticated,
          currentUser: user,
        ));
      },
    );
  }

  Future<void> _onLogoutRequested(
    LogoutRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: AuthStatus.loading, errorMessage: null));
    final result = await _logoutUseCase.execute(NoParams());

    result.fold(
      (failure) {
        emit(state.copyWith(
          status: AuthStatus.failure,
          errorMessage: failure.message,
        ));
      },
      (user) {
        emit(state.copyWith(
          status: AuthStatus.unauthenticated,
        ));
      },
    );
  }
}
