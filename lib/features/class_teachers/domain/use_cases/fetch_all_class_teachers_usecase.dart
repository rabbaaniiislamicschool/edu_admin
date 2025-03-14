import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/class_teacher.dart';
import '../repositories/class_teacher_repository.dart';

@injectable
class FetchAllClassTeachersUseCase implements UseCase<List<ClassTeacher>, void>{

  final ClassTeacherRepository _repository;

  FetchAllClassTeachersUseCase(this._repository);

  @override
  Future<Either<Failure, List<ClassTeacher>>> execute(void params) {
    return _repository.getAllClassTeachers();
  }
}