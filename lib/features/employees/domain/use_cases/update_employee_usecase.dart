import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/foundations/domain/entities/foundation.dart';
import 'package:edu_admin/features/foundations/domain/repositories/foundation_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/employee.dart';
import '../repositories/employee_repository.dart';

@injectable
class UpdateEmployeeUseCase implements UseCase<void, Employee>{
  final EmployeeRepository _repository;

  UpdateEmployeeUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(Employee params) {
    return _repository.updateEmployee(params);
  }
}