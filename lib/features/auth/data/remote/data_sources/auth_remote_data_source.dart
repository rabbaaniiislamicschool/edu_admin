import 'package:edu_admin/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<Either<Failure, UserModel>> login(String email, String password);
  Future<Either<Failure,void>> logout();
  Future<Either<Failure, UserModel>> fetchUser(String userId);
}