import 'package:edu_admin/features/auth/data/local/models/user_login_data.dart';
import 'package:edu_admin/features/auth/data/remote/models/user_model.dart';
import 'package:fpdart/fpdart.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/res/strings.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../local/data_sources/auth_local_data_source.dart';
import '../remote/data_sources/auth_remote_data_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthLocalDataSource _localDataSource;
  final AuthRemoteDataSource _remoteDataSource;

  AuthRepositoryImpl(this._localDataSource, this._remoteDataSource);

  @override
  Future<Either<Failure, User>> login(
    String studentNumberId,
    String password,
  ) async {
    final email = '$studentNumberId@$domain';
    final user = await _remoteDataSource.login(email, password);
    return user.fold(
      (failure) => Left(failure),
      (data) async {
        await _localDataSource.saveUserLogin(
          data.toLocal(studentNumberId, password),
        );
        return Right(data.toEntity());
      },
    );
  }

  @override
  Future<Either<Failure, User>> getCurrentUser() async {
    final user = await _localDataSource.getCurrentUser();
    return user.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, void>> logout() async {
    final logoutResult = await _remoteDataSource.logout();
    return logoutResult.fold(
      (failure) => Left(failure),
      (_) async {
        await _localDataSource.deleteCurrentUser();
        return Right(null);
      },
    );
  }

  @override
  Future<Either<Failure, bool>> isAuthenticated() async {
    final currentUser = await getCurrentUser();
    return currentUser.fold(
      (failure) => Left(failure),
      (user) => Right(true),
    );
  }

  @override
  Future<Either<Failure, List<User>>> getAllUsers() async {
    final users = await _localDataSource.getAllUsers();
    return users.map((data) => data
        .map(
          (model) => model.toEntity(),
        )
        .toList());
  }
}
