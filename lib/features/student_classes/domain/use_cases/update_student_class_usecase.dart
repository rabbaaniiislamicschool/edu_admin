import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:edu_admin/features/schools/domain/repositories/school_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/student_class.dart';
import '../repositories/student_class_repository.dart';

@injectable
class UpdateStudentClassUseCase implements UseCase<void, StudentClass>{
  final StudentClassRepository _repository;

  UpdateStudentClassUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(StudentClass params) {
    return _repository.updateStudentClass(params);
  }

}