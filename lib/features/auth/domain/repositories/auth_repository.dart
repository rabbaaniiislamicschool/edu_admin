import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failure.dart';
import '../entities/user.dart';

abstract class AuthRepository {

  Future<Either<Failure, User>> login(
    String studentNumberId,
    String password,
  );

  Future<Either<Failure, User>> getCurrentUser();

  Future<Either<Failure, List<User>>> getAllUsers();

  Future<Either<Failure, bool>> isAuthenticated();

  Future<Either<Failure, void>> logout();
}
