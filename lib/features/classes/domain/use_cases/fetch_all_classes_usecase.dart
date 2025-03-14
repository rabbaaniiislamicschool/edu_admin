import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/class.dart';
import '../repositories/class_repository.dart';

@injectable
class FetchAllClassUseCase implements UseCase<List<Class>, void>{

  final ClassRepository _repository;

  FetchAllClassUseCase(this._repository);

  @override
  Future<Either<Failure, List<Class>>> execute(void params) {
    return _repository.getAllClass();
  }
}