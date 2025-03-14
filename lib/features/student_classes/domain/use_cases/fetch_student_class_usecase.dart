import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../entities/student_class.dart';
import '../repositories/student_class_repository.dart';

@injectable
class FetchStudentClassUseCase implements UseCase<StudentClass, int> {
  final StudentClassRepository _repository;

  FetchStudentClassUseCase(this._repository);

  @override
  Future<Either<Failure, StudentClass>> execute(int params) {
    return _repository.getStudentClass(params);
  }

}