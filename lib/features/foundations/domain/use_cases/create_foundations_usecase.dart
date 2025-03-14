import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/foundations/domain/entities/foundation.dart';
import 'package:edu_admin/features/foundations/domain/repositories/foundation_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateFoundationsUseCase implements UseCase<void, List<Foundation>>{
  final FoundationRepository _repository;

  CreateFoundationsUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(List<Foundation> params) {
    return _repository.createFoundations(params);
  }

}