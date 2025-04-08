import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:fpdart/fpdart.dart';
import '../../../../core/error/failure.dart';
import '../repositories/auth_repository.dart';

@injectable
class CheckAuthStatusUseCase implements UseCase<bool, NoParams> {
  final AuthRepository _authRepository;

  CheckAuthStatusUseCase(this._authRepository);

  @override
  Future<Either<Failure, bool>> execute(NoParams params) async {
    return _authRepository.isAuthenticated();
  }
}
