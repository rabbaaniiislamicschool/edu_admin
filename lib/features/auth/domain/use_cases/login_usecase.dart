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

  Future<Either<Failure, User>> execute(LoginParams params) {
    return _authRepository.login(params.studentNumberId, params.password);
  }
}

class LoginParams {
  final String studentNumberId;
  final String password;

  LoginParams({required this.studentNumberId, required this.password});

}