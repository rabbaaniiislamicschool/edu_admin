import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/employees/domain/entities/user_employee.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/employee.dart';
import '../repositories/employee_repository.dart';

@injectable
class CreateUserEmployeeUseCase
    implements UseCase<List<Employee>, CreateUserEmployeeParams> {
  final EmployeeRepository _repository;

  CreateUserEmployeeUseCase(this._repository);

  @override
  Future<Either<Failure, List<Employee>>> execute(
    CreateUserEmployeeParams params,
  ) {
    return _repository.createUserEmployee(
      params.userEmployees,
      params.defaultPassword,
    );
  }
}

class CreateUserEmployeeParams {
  final UserEmployee userEmployees;
  final String defaultPassword;

  CreateUserEmployeeParams({
    required this.userEmployees,
    required this.defaultPassword,
  });
}
