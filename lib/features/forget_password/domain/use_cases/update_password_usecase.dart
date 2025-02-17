import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import 'package:edu_admin/core/error/failure.dart';

import '../../../../core/usecase/usecase.dart';
import '../repositories/forget_password_repository.dart';

@injectable
class UpdatePasswordUseCase implements UseCase<void, String> {
  final ForgetPasswordRepository _repository;

  UpdatePasswordUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(String newPassword) {
    return _repository.updatePassword(newPassword);
  }
}