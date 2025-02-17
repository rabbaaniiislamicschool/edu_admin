import 'package:edu_admin/features/auth/data/remote/models/user_model.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:edu_admin/core/error/failure.dart';
import '../../../auth/domain/entities/user.dart';
import '../../domain/repositories/forget_password_repository.dart';
import '../data_sources/forget_password_remote_datasource.dart';


@LazySingleton(as: ForgetPasswordRepository)
class ForgetPasswordRepositoryImpl implements ForgetPasswordRepository {
  final ForgetPasswordRemoteDataSource _remoteDataSource;

  ForgetPasswordRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, void>> updatePassword(String newPassword) {
    return _remoteDataSource.updatePassword(newPassword);
  }

  @override
  Future<Either<Failure, User>> validateAndForgetPassword(
    String studentId,
    String dob,
    String? newPassword,
  ) async {
    final result = await _remoteDataSource.validateAndForgetPassword(
        studentId, dob, newPassword);
    return result.map((model) => model.toEntity());
  }
}
