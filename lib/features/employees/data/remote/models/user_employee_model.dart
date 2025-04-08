import 'package:edu_admin/features/auth/data/remote/models/user_model.dart';
import 'package:edu_admin/features/employees/data/remote/models/employee_model.dart';
import 'package:edu_admin/features/employees/domain/entities/user_employee.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_employee_model.freezed.dart';
part 'user_employee_model.g.dart';

@freezed
abstract class UserEmployeeModel with _$UserEmployeeModel {
  factory UserEmployeeModel({
    required UserModel user,
    required EmployeeModel employee,
  }) = _UserEmployeeModel;

  factory UserEmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$UserEmployeeModelFromJson(json);
}

extension UserEmployeeModelX on UserEmployeeModel {
  UserEmployee toEntity() =>
      UserEmployee(user: user.toEntity(), employee: employee.toEntity());
}
