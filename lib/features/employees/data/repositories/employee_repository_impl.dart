import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/employees/domain/entities/employee.dart';
import 'package:edu_admin/features/employees/domain/entities/user_employee.dart';
import 'package:edu_admin/features/employees/domain/repositories/employee_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../remote/data_sources/employee_remote_datasource.dart';
import '../remote/models/employee_model.dart';

@LazySingleton(as: EmployeeRepository)
class EmployeeRepositoryImpl implements EmployeeRepository {
  final EmployeeRemoteDataSource _dataSource;

  EmployeeRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, void>> deleteEmployee(String employeeId) {
    return _dataSource.deleteEmployee(employeeId);
  }

  @override
  Future<Either<Failure, List<Employee>>> getAllEmployees() async {
    final result = await _dataSource.fetchAllEmployees();
    return result.map((data) => data.map((model) => model.toEntity()).toList());
  }

  @override
  Future<Either<Failure, Employee>> getEmployee(String employeeId) async {
    final result = await _dataSource.fetchEmployee(employeeId);
    return result.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, List<Employee>>> createUserEmployees(
    List<UserEmployee> userEmployees,
    String defaultPassword,
  ) async {
    final models =
        userEmployees.map((userEmployee) => userEmployee.toModel()).toList();
    final result = await _dataSource.createUserEmployees(
      models,
      defaultPassword,
    );
    return result.map((data) => data.map((model) => model.toEntity()).toList());
  }

  @override
  Future<Either<Failure, void>> updateUserEmployee(
    UserEmployee userEmployee,
    String? resetPassword,
  ) {
    return _dataSource.updateUserEmployee(
      userEmployee.toModel(),
      resetPassword,
    );
  }

  @override
  Future<Either<Failure, List<Employee>>> createUserEmployee(
    UserEmployee userEmployee,
    String defaultPassword,
  ) async {
    final result = await _dataSource.createUserEmployee(
      userEmployee.toModel(),
      defaultPassword,
    );
    return result.map((data) => data.map((model) => model.toEntity()).toList());
  }
}
