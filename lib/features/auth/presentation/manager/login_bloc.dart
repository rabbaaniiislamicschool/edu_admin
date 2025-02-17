// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:injectable/injectable.dart';
// import 'package:edu_admin/features/login/domain/use_cases/check_auth_status_usecase.dart';
// import '../../../../core/usecase/usecase.dart';
// import '../../domain/use_cases/login_usecase.dart';
// import 'login_event.dart';
// import 'login_state.dart';
//
// @injectable
// class LoginBloc extends Bloc<LoginEvent, LoginState> {
//   final LoginUseCase _loginUseCase;
//   final CheckAuthStatusUseCase _checkAuthStatusUseCase;
//
//   LoginBloc(
//     this._loginUseCase,
//     this._checkAuthStatusUseCase,
//   ) : super(LoginState.initial()) {
//     on<LoginEvent>((event, emit) async {
//       await event.when(
//         loginPressed: (phoneNumber, password) async {
//           emit(state.copyWith(isLoading: true, errorMessage: null));
//           final result = await _loginUseCase.execute(LoginParams(
//             phoneNumber: phoneNumber,
//             password: password,
//           ));
//           result.fold(
//             (failure) {
//               emit(state.copyWith(
//                 isLoading: false,
//                 errorMessage: failure.message,
//               ));
//             },
//             (user) {
//               emit(state.copyWith(
//                 isLoading: false,
//                 user: user,
//               ));
//             },
//           );
//         },
//       );
//     });
//   }
// }
