import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/student_fee.dart';
import '../repositories/student_fee_repository.dart';

@injectable
class FetchAllStudentFeesUseCase implements UseCase<List<StudentFee>, void>{

  final StudentFeeRepository _repository;

  FetchAllStudentFeesUseCase(this._repository);

  @override
  Future<Either<Failure, List<StudentFee>>> execute(void params) {
    return _repository.getAllStudentFees();
  }
}