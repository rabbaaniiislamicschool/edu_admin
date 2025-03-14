import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/foundations/domain/repositories/foundation_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../repositories/employee_repository.dart';

@injectable
class DeleteEmployeeUseCase implements UseCase<void, String>{
  final EmployeeRepository _repository;

  DeleteEmployeeUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(String params) {
    return _repository.deleteEmployee(params);
  }

}