import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:edu_admin/features/schools/domain/repositories/school_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/student_fee.dart';
import '../repositories/student_fee_repository.dart';

@injectable
class UpdateStudentFeeUseCase implements UseCase<void, StudentFee>{
  final StudentFeeRepository _repository;

  UpdateStudentFeeUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(StudentFee params) {
    return _repository.updateStudentFee(params);
  }

}