import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/employees/domain/entities/import_employee.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/employee.dart';
import '../repositories/employee_repository.dart';

@injectable
class ImportEmployeeUsersUseCase implements UseCase<List<Employee>, ImportEmployee>{

  final EmployeeRepository _repository;

  ImportEmployeeUsersUseCase(this._repository);

  @override
  Future<Either<Failure, List<Employee>>> execute(ImportEmployee params) {
    return _repository.importEmployeeUsers(params);
  }
}