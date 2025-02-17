import 'package:edu_admin/features/home/data/remote/data_sources/student_class_remote_datasource.dart';
import 'package:edu_admin/features/home/data/remote/models/student_class_model.dart';
import 'package:edu_admin/features/home/domain/entities/student_class.dart';
import 'package:edu_admin/features/home/domain/repositories/student_class_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../auth/data/local/data_sources/auth_local_data_source.dart';

@LazySingleton(as: StudentClassRepository)
class StudentClassRepositoryImpl implements StudentClassRepository {
  final StudentClassRemoteDataSource _remoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;

  StudentClassRepositoryImpl(this._remoteDataSource, this._authLocalDataSource);

  @override
  Future<Either<Failure, StudentClass>> getStudentClass() async {
    final currentUserResult = await _authLocalDataSource.getCurrentUser();
    return currentUserResult.fold(
      (failure) => Left(failure),
      (currentUser) async {
        final feesResult =
            await _remoteDataSource.fetchStudentClass(currentUser.userId);
        return feesResult.fold(
          (failure) => Left(failure),
          (model) => Right(model.toEntity()),
        );
      },
    );
  }
}
