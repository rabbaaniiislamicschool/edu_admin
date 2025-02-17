import 'package:edu_admin/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../../../auth/domain/entities/user.dart';

abstract class ForgetPasswordRepository {
  Future<Either<Failure, User>> validateAndForgetPassword(
    String studentId,
    String dob,
    String? newPassword,
  );

  Future<Either<Failure, void>> updatePassword(
    String newPassword,
  );
}
