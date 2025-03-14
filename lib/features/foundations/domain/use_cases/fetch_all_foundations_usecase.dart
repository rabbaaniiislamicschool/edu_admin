import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/foundations/domain/entities/foundation.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../repositories/foundation_repository.dart';

@injectable
class FetchAllFoundationsUseCase implements UseCase<List<Foundation>, void>{

  final FoundationRepository _repository;

  FetchAllFoundationsUseCase(this._repository);

  @override
  Future<Either<Failure, List<Foundation>>> execute(void params) {
    return _repository.getAllFoundations();
  }
}