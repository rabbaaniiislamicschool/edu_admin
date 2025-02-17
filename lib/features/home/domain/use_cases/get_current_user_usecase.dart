import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../auth/domain/entities/user.dart';
import '../../../auth/domain/repositories/auth_repository.dart';

@injectable
class GetCurrentUserUsecase implements UseCase<User, NoParams> {
  final AuthRepository _repository;

  GetCurrentUserUsecase(this._repository);

  @override
  Future<Either<Failure, User>> execute(NoParams params) async {
    return await _repository.getCurrentUser();
  }
}
