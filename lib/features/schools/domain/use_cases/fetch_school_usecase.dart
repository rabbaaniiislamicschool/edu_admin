import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/school.dart';
import '../repositories/school_repository.dart';

@injectable
class FetchSchoolUseCase implements UseCase<School, int> {
  final SchoolRepository _repository;

  FetchSchoolUseCase(this._repository);

  @override
  Future<Either<Failure, School>> execute(int params) {
    return _repository.getSchool(params);
  }

}