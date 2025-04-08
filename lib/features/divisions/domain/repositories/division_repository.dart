import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/divisions/domain/entities/division.dart';
import 'package:fpdart/fpdart.dart';

abstract class DivisionRepository {
  Future<Either<Failure, void>> createDivision(Division division);
  Future<Either<Failure, void>> createDivisions(List<Division> divisions);
  Future<Either<Failure, void>> updateDivision(Division division);
  Future<Either<Failure, void>> deleteDivision(int divisionId);
  Future<Either<Failure, Division>> getDivision(int divisionId);
  Future<Either<Failure, List<Division>>> getAllDivisions();
}
