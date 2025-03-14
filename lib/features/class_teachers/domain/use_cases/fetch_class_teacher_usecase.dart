import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../entities/class_teacher.dart';
import '../repositories/class_teacher_repository.dart';

@injectable
class FetchClassTeacherUseCase implements UseCase<ClassTeacher, int> {
  final ClassTeacherRepository _repository;

  FetchClassTeacherUseCase(this._repository);

  @override
  Future<Either<Failure, ClassTeacher>> execute(int params) {
    return _repository.getClassTeacher(params);
  }

}