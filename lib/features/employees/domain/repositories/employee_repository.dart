import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/employees/domain/entities/employee.dart';
import 'package:edu_admin/features/employees/domain/entities/user_employee.dart';
import 'package:fpdart/fpdart.dart';

abstract class EmployeeRepository {
  Future<Either<Failure, List<Employee>>> createUserEmployee(
    UserEmployee userEmployee,
    String defaultPassword,
  );
  Future<Either<Failure, List<Employee>>> createUserEmployees(
    List<UserEmployee> userEmployees,
    String defaultPassword,
  );
  Future<Either<Failure, void>> updateUserEmployee(
    UserEmployee userEmployee,
    String? resetPassword,
  );
  Future<Either<Failure, void>> deleteEmployee(String employeeId);
  Future<Either<Failure, Employee>> getEmployee(String employeeId);
  Future<Either<Failure, List<Employee>>> getAllEmployees();
}
