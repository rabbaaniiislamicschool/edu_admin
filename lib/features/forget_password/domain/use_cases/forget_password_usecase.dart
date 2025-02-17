import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import 'package:edu_admin/core/error/failure.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../auth/domain/entities/user.dart';
import '../repositories/forget_password_repository.dart';

@injectable
class ForgetPasswordUseCase implements UseCase<User, ForgetPasswordParams> {
  final ForgetPasswordRepository _repository;

  ForgetPasswordUseCase(this._repository);

  @override
  Future<Either<Failure, User>> execute(ForgetPasswordParams params) {
    return _repository.validateAndForgetPassword(
      params.studentNumberId,
      params.dob,
      params.newPassword,
    );
  }
}

class ForgetPasswordParams {
  final String studentNumberId;
  final String dob;
  final String? newPassword;

  ForgetPasswordParams(this.studentNumberId, this.dob, this.newPassword);
}
