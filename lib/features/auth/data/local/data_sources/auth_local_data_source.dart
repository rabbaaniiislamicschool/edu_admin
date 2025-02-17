import 'package:fpdart/fpdart.dart';

import '../../../../../core/error/failure.dart';
import '../models/user_login_data.dart';

abstract class AuthLocalDataSource {
  Future<Either<Failure, void>> saveUserLogin(UserLoginData userLoginData);
  Future<Either<Failure, void>> deleteUserLogin(String studentId);
  Future<Either<Failure, UserLoginData>> getUserLogin(String studentId);
  Future<Either<Failure, List<UserLoginData>>> getAllUsers();
  Future<Either<Failure, void>> clearAllUsers();

  Future<Either<Failure, void>> deleteCurrentUser();
  Future<Either<Failure, UserLoginData>> getCurrentUser();
  Future<Either<Failure, void>> setCurrentUser(String userId);
}