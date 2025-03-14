import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/student_class.dart';
import '../repositories/student_class_repository.dart';

@injectable
class FetchAllStudentClasssUseCase implements UseCase<List<StudentClass>, void>{

  final StudentClassRepository _repository;

  FetchAllStudentClasssUseCase(this._repository);

  @override
  Future<Either<Failure, List<StudentClass>>> execute(void params) {
    return _repository.getAllStudentClasss();
  }
}