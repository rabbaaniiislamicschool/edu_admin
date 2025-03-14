import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../repositories/school_repository.dart';

@injectable
class FetchAllSchoolsUseCase implements UseCase<List<School>, void>{

  final SchoolRepository _repository;

  FetchAllSchoolsUseCase(this._repository);

  @override
  Future<Either<Failure, List<School>>> execute(void params) {
    return _repository.getAllSchools();
  }
}