// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserEmployeeModel _$UserEmployeeModelFromJson(Map<String, dynamic> json) =>
    _UserEmployeeModel(
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      employee: EmployeeModel.fromJson(
        json['employee'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$UserEmployeeModelToJson(_UserEmployeeModel instance) =>
    <String, dynamic>{'user': instance.user, 'employee': instance.employee};
