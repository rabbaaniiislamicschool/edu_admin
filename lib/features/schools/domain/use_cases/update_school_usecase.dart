import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:edu_admin/features/schools/domain/repositories/school_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateSchoolUseCase implements UseCase<void, School>{
  final SchoolRepository _repository;

  UpdateSchoolUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(School params) {
    return _repository.updateSchool(params);
  }

}