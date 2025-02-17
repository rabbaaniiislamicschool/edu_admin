import 'package:injectable/injectable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import '../../../../core/error/failure.dart';
import '../entities/user.dart';
import '../repositories/auth_repository.dart';

@injectable
class LogoutUseCase implements UseCase<void, NoParams> {
  final AuthRepository _authRepository;

  LogoutUseCase(this._authRepository);

  @override
  Future<Either<Failure, void>> execute(NoParams params) {
    return _authRepository.logout();
  }

}