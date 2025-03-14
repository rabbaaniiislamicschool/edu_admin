import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/employee.dart';
import '../repositories/employee_repository.dart';

@injectable
class FetchEmployeeUseCase implements UseCase<Employee, String> {
  final EmployeeRepository _repository;

  FetchEmployeeUseCase(this._repository);

  @override
  Future<Either<Failure, Employee>> execute(String params) {
    return _repository.getEmployee(params);
  }

}