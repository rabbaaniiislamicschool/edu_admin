import 'package:fpdart/fpdart.dart';
import '../error/failure.dart';

/// Abstraksi untuk semua Use Case
abstract class UseCase<T, Params> {
  Future<Either<Failure, T>> execute(Params params);
}

/// Untuk use case tanpa parameter
class NoParams {}