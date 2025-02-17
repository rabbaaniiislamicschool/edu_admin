import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import '../../../auth/domain/entities/user.dart';
import '../../../auth/domain/repositories/auth_repository.dart';

@injectable
class GetAllUsersUseCase implements UseCase<List<User>, NoParams>{

  final AuthRepository _repository;

  GetAllUsersUseCase(this._repository);

  @override
  Future<Either<Failure, List<User>>> execute(NoParams params) {
    return _repository.getAllUsers();
  }
}