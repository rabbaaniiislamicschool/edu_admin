import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/home/domain/entities/student_class.dart';
import 'package:edu_admin/features/home/domain/repositories/student_class_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetStudentClassUseCase implements UseCase<StudentClass, NoParams> {
  final StudentClassRepository _repository;

  GetStudentClassUseCase(this._repository);

  @override
  Future<Either<Failure, StudentClass>> execute(NoParams params) async {
    return await _repository.getStudentClass();
  }
}
