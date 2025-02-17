import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/home/domain/use_cases/get_current_user_usecase.dart';
import 'package:edu_admin/features/home/domain/use_cases/get_student_class_usecase.dart';
import 'package:edu_admin/features/home/presentation/manager/student_class_event.dart';
import 'package:edu_admin/features/home/presentation/manager/student_class_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/get_all_users_usecase.dart';

@Injectable()
class StudentClassBloc extends Bloc<StudentClassEvent, StudentClassState> {
  final GetStudentClassUseCase _getStudentClassUseCase;
  final GetCurrentUserUsecase _getCurrentUserUsecase;
  final GetAllUsersUseCase _getAllUsersUsecase;

  StudentClassBloc(
    this._getStudentClassUseCase,
    this._getCurrentUserUsecase,
    this._getAllUsersUsecase,
  ) : super(StudentClassState.initial()) {
    on<StudentClassEvent>(
      (event, emit) async {
        await event.when(
          load: () async => await _handleLoadEvent(emit),
          getCurrentUser: () async => await _handleGetCurrentUserEvent(emit),
          getAllUsers: () async => await _handleGetAllUsersEvent(emit),
        );
      },
    );
  }

  Future<void> _handleLoadEvent(
    Emitter<StudentClassState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await _getStudentClassUseCase.execute(
      NoParams(),
    );
    result.fold(
      (failure) => emit(state.copyWith(
        isLoading: false,
        errorMessage: failure.message,
      )),
      (data) => emit(state.copyWith(
        isLoading: false,
        studentClass: data,
      )),
    );
  }

  Future<void> _handleGetCurrentUserEvent(
    Emitter<StudentClassState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await _getCurrentUserUsecase.execute(
      NoParams(),
    );
    result.fold(
      (failure) => emit(state.copyWith(
        isLoading: false,
        errorMessage: failure.message,
      )),
      (currentUser) => emit(state.copyWith(
        isLoading: false,
        currentUser: currentUser,
      )),
    );
  }

  _handleGetAllUsersEvent(Emitter<StudentClassState> emit) async {
    emit(state.copyWith(isLoading: true));
    final result = await _getAllUsersUsecase.execute(
      NoParams(),
    );
    result.fold(
      (failure) => emit(state.copyWith(
        isLoading: false,
        errorMessage: failure.message,
      )),
      (users) => emit(state.copyWith(
        isLoading: false,
        allUsers: users,
      )),
    );
  }
}
