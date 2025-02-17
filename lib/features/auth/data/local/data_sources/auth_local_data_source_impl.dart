import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/utils/hive_helper.dart';
import 'package:edu_admin/core/utils/safe_request.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/res/strings.dart';
import '../models/user_login_data.dart';
import 'auth_local_data_source.dart';

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final HiveHelper hive;

  AuthLocalDataSourceImpl(this.hive);

  @override
  Future<Either<Failure, void>> saveUserLogin(
    UserLoginData userLoginData,
  ) async {
    return safeLocalOperation(
      () async {
        await hive.put<UserLoginData?>(
          userBox,
          userLoginData.studentNumberId,
          userLoginData,
        );
        await setCurrentUser(userLoginData.studentNumberId);
        return Right(null);
      },
    );
  }

  @override
  Future<Either<Failure, void>> clearAllUsers() async {
    return safeLocalOperation(
      () async {
        await hive.clear(userBox);
        return Right(null);
      },
    );
  }

  @override
  Future<Either<Failure, void>> deleteCurrentUser() async {
    return safeLocalOperation(
      () async {
        final currentUser = await getCurrentUser();
        return await currentUser.fold(
          (failure) {
            return Left(
              Failure.local('Gagal menghapus user, data user tidak ditemukan'),
            );
          },
          (data) async {
            await deleteUserLogin(data.studentNumberId);
            return Right(null);
          },
        );
      },
    );
  }

  @override
  Future<Either<Failure, void>> deleteUserLogin(String studentId) async {
    return safeLocalOperation(
      () async {
        await hive.delete<UserLoginData?>(userBox, studentId);
        final currentUserId =
            await hive.get<String?>(userIdBox, currentUserKey);
        if (currentUserId != studentId) {
          return Left(
            Failure.local('Gagal menghapus user, data user tidak ditemukan'),
          );
        }
        await hive.delete<String?>(userIdBox, currentUserKey);
        return Right(null);
      },
    );
  }

  @override
  Future<Either<Failure, List<UserLoginData>>> getAllUsers() async {
    return safeLocalOperation(
      () async {
        final result = await hive.getAllValues<UserLoginData?>(userBox);
        final users = result
            .where(
              (element) => element != null,
            )
            .cast<UserLoginData>()
            .toList();
        return Right(users);
      },
    );
  }

  @override
  Future<Either<Failure, UserLoginData>> getCurrentUser() async {
    return safeLocalOperation(
      () async {
        final currentUserId = await hive.get<String?>(
          userIdBox,
          currentUserKey,
        );

        if (currentUserId == null) {
          return left(Failure.local('Data user tidak ada'));
        }

        return getUserLogin(currentUserId);
      },
    );
  }

  @override
  Future<Either<Failure, UserLoginData>> getUserLogin(String studentId) async {
    return safeLocalOperation(
      () async {
        final result = await hive.get<UserLoginData?>(userBox, studentId);
        if (result == null) {
          return Either.left(Failure.local('Data user tidak ada'));
        }
        return Either.right(result);
      },
    );
  }

  @override
  Future<Either<Failure, void>> setCurrentUser(String userId) async {
    return safeLocalOperation(
      () async {
        await hive.put<String?>(userIdBox, currentUserKey, userId);
        return right(null);
      },
    );
  }
}
