import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../entities/student_fee.dart';
import '../repositories/student_fee_repository.dart';

@injectable
class FetchStudentFeeUseCase implements UseCase<StudentFee, int> {
  final StudentFeeRepository _repository;

  FetchStudentFeeUseCase(this._repository);

  @override
  Future<Either<Failure, StudentFee>> execute(int params) {
    return _repository.getStudentFee(params);
  }

}