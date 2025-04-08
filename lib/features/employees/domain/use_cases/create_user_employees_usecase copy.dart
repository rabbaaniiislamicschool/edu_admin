import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/employees/domain/entities/user_employee.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/employee.dart';
import '../repositories/employee_repository.dart';

@injectable
class CreateUserEmployeesUseCase
    implements UseCase<List<Employee>, CreateUserEmployeesParams> {
  final EmployeeRepository _repository;

  CreateUserEmployeesUseCase(this._repository);

  @override
  Future<Either<Failure, List<Employee>>> execute(
    CreateUserEmployeesParams params,
  ) {
    return _repository.createUserEmployees(
      params.userEmployees,
      params.defaultPassword,
    );
  }
}

class CreateUserEmployeesParams {
  final List<UserEmployee> userEmployees;
  final String defaultPassword;

  CreateUserEmployeesParams({
    required this.userEmployees,
    required this.defaultPassword,
  });
}
