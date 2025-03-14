import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/foundation.dart';
import '../repositories/foundation_repository.dart';

@injectable
class FetchFoundationUseCase implements UseCase<Foundation, String> {
  final FoundationRepository _repository;

  FetchFoundationUseCase(this._repository);

  @override
  Future<Either<Failure, Foundation>> execute(String params) {
    return _repository.getFoundation(params);
  }

}