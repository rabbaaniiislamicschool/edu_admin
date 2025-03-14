import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:edu_admin/features/schools/domain/repositories/school_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/class_teacher.dart';
import '../repositories/class_teacher_repository.dart';

@injectable
class CreateClassTeacherUseCase implements UseCase<void, ClassTeacher>{
  final ClassTeacherRepository _repository;

  CreateClassTeacherUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(ClassTeacher params) {
    return _repository.createClassTeacher(params);
  }

}