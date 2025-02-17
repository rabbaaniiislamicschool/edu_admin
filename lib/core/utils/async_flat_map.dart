import 'package:fpdart/fpdart.dart';

extension EitherAsyncExtensions<L, R> on Either<L, R> {
  Future<Either<L, R2>> asyncFlatMap<R2>(
      Future<Either<L, R2>> Function(R value) transform) async {
    return fold(
      (l) async => Left(l),
      (r) async => await transform(r),
    );
  }
}

Future<Either<L, R2>> chainAsync<L, R1, R2>(
  Future<Either<L, R1>> futureEither,
  Future<Either<L, R2>> Function(R1 value) transform,
) async {
  final either = await futureEither;
  return either.match(
    (l) => left(l),
    (r) => transform(r),
  );
}

// EXAMPLE USAGE
// final feesResult = await chainAsync(
//   _authLocalDataSource.getCurrentUser(),
//   (currentUser) => chainAsync(
//     _studentClassRemoteDataSource.fetchStudentClass(currentUser.studentId),
//     (student) => _remoteDataSource.fetchAllStudentFee(
//       student.studentId,
//       student.academicYearId,
//     ),
//   ),
// );
// return feesResult.map(
//   (data) => data.map((model) => model.toEntity()).toList(),
// );
