import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/foundations/domain/entities/foundation.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/employee.dart';
import '../repositories/employee_repository.dart';

@injectable
class FetchAllEmployeesUseCase implements UseCase<List<Employee>, void>{

  final EmployeeRepository _repository;

  FetchAllEmployeesUseCase(this._repository);

  @override
  Future<Either<Failure, List<Employee>>> execute(void params) {
    return _repository.getAllEmployees();
  }
}