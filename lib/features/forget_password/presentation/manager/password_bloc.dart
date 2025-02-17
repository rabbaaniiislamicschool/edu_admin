import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:edu_admin/features/forget_password/presentation/manager/password_event.dart';
import 'package:edu_admin/features/forget_password/presentation/manager/password_state.dart';

import '../../domain/use_cases/forget_password_usecase.dart';
import '../../domain/use_cases/update_password_usecase.dart';

@injectable
class PasswordBloc extends Bloc<PasswordEvent, PasswordState> {
  final ForgetPasswordUseCase _forgetPasswordUseCase;
  final UpdatePasswordUseCase _updatePasswordUseCase;

  PasswordBloc(
    this._forgetPasswordUseCase,
    this._updatePasswordUseCase,
  ) : super(PasswordState.initial()) {
    on<ForgetPasswordEvent>(_onForgetPassword);
    on<UpdatePasswordEvent>(_onUpdatePassword);
  }

  Future<void> _onForgetPassword(
    ForgetPasswordEvent event,
    Emitter<PasswordState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    final result = await _forgetPasswordUseCase.execute(ForgetPasswordParams(
      event.studentNumberId,
      event.dob,
      event.newPassword,
    ));
    result.fold((error) {
      emit(state.copyWith(isLoading: false, errorMessage: error.message));
    }, (data) {
      emit(state.copyWith(updatedUser: data, isLoading: false));
    });
  }

  Future<void> _onUpdatePassword(
    UpdatePasswordEvent event,
    Emitter<PasswordState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null, isUpdateSuccess: false));
    final result = await _updatePasswordUseCase.execute(event.newPassword);
    result.fold((error) {
      emit(state.copyWith(isLoading: false, errorMessage: error.message));
    }, (data) {
      emit(state.copyWith(isUpdateSuccess: true, isLoading: false));
    });
  }
}
