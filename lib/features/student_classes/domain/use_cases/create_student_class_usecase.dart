import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';

import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/student_class.dart';
import '../repositories/student_class_repository.dart';

@injectable
class CreateStudentClassUseCase implements UseCase<void, StudentClass>{
  final StudentClassRepository _repository;

  CreateStudentClassUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(StudentClass params) {
    return _repository.createStudentClass(params);
  }

}