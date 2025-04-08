import 'package:injectable/injectable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import '../../../../core/error/failure.dart';
import '../entities/user.dart';
import '../repositories/auth_repository.dart';

@injectable
class LoginUseCase implements UseCase<User, LoginParams> {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  @override
  Future<Either<Failure, User>> execute(LoginParams params) {
    return _authRepository.login(params.phoneNumber, params.password);
  }
}

class LoginParams {
  final String phoneNumber;
  final String password;

  LoginParams({required this.phoneNumber, required this.password});
}
