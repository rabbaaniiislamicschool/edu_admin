import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:fpdart/fpdart.dart';

abstract class SchoolRepository {
  Future<Either<Failure, void>> createSchool(School school);
  Future<Either<Failure, void>> createSchools(List<School> schools);
  Future<Either<Failure, void>> updateSchool(School school);
  Future<Either<Failure, void>> deleteSchool(int schoolId);
  Future<Either<Failure, School>> getSchool(int schoolId);
  Future<Either<Failure, List<School>>> getAllSchools();
}
