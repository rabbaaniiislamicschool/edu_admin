import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/employees/domain/entities/user_employee.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../repositories/employee_repository.dart';

@injectable
class UpdateUserEmployeeUseCase
    implements UseCase<void, UpdateUserEmployeeParams> {
  final EmployeeRepository _repository;

  UpdateUserEmployeeUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(UpdateUserEmployeeParams params) {
    return _repository.updateUserEmployee(
      params.userEmployee,
      params.resetPassword,
    );
  }
}

class UpdateUserEmployeeParams {
  final UserEmployee userEmployee;
  final String? resetPassword;

  UpdateUserEmployeeParams(this.userEmployee, this.resetPassword);
}
