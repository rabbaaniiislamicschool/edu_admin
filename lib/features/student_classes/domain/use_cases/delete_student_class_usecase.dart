import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/repositories/school_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../repositories/student_class_repository.dart';

@injectable
class DeleteStudentClassUseCase implements UseCase<void, int>{
  final StudentClassRepository _repository;

  DeleteStudentClassUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(int params) {
    return _repository.deleteStudentClass(params);
  }

}