import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/employees/domain/entities/employee.dart';
import 'package:edu_admin/features/employees/domain/entities/import_employee.dart';
import 'package:fpdart/fpdart.dart';

abstract class EmployeeRepository {
  Future<Either<Failure, void>> createEmployee(Employee employee);
  Future<Either<Failure, List<Employee>>> importEmployeeUsers(ImportEmployee importEmployee);
  Future<Either<Failure, void>> updateEmployee(Employee employee);
  Future<Either<Failure, void>> deleteEmployee(String employeeId);
  Future<Either<Failure, Employee>> getEmployee(String employeeId);
  Future<Either<Failure, List<Employee>>> getAllEmployees();
}