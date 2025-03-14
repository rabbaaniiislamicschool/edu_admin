import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/repositories/school_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../repositories/class_teacher_repository.dart';

@injectable
class DeleteClassTeacherUseCase implements UseCase<void, int>{
  final ClassTeacherRepository _repository;

  DeleteClassTeacherUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(int params) {
    return _repository.deleteClassTeacher(params);
  }

}