import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/foundations/domain/entities/foundation.dart';
import 'package:fpdart/fpdart.dart';

abstract class FoundationRepository {
  Future<Either<Failure, void>> createFoundation(Foundation foundation);
  Future<Either<Failure, void>> createFoundations(List<Foundation> foundations);
  Future<Either<Failure, void>> updateFoundation(Foundation foundation);
  Future<Either<Failure, void>> deleteFoundation(String foundationId);
  Future<Either<Failure, Foundation>> getFoundation(String foundationId);
  Future<Either<Failure, List<Foundation>>> getAllFoundations();
}