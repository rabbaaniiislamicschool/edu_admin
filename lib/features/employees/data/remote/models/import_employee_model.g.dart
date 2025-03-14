// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ImportEmployeeModel _$ImportEmployeeModelFromJson(Map<String, dynamic> json) =>
    _ImportEmployeeModel(
      defaultPassword: json['default_password'] as String,
      data:
          (json['data'] as List<dynamic>)
              .map(
                (e) =>
                    ImportEmployeeModelData.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
    );

Map<String, dynamic> _$ImportEmployeeModelToJson(
  _ImportEmployeeModel instance,
) => <String, dynamic>{
  'default_password': instance.defaultPassword,
  'data': instance.data,
};

_ImportEmployeeModelData _$ImportEmployeeModelDataFromJson(
  Map<String, dynamic> json,
) => _ImportEmployeeModelData(
  employeeNumberId: json['employee_number_id'] as String,
  fullName: json['full_name'] as String,
  email: json['email'] as String,
  phoneNumber: json['phone_number'] as String,
  foundationId: json['foundation_id'] as String,
  gender: json['gender'] as String,
  dob: json['dob'] as String,
  address: json['address'] as String,
  birthPlace: json['birth_place'] as String,
  divisionId: json['division_id'] as String?,
  educationLevel: json['education_level'] as String,
  hiredDate: json['hired_date'] as String,
  leaveDate: json['leave_date'] as String?,
  employmentStatus: json['employment_status'] as String,
  position: json['position'] as String,
  isTeaching: json['is_teaching'] as bool,
);

Map<String, dynamic> _$ImportEmployeeModelDataToJson(
  _ImportEmployeeModelData instance,
) => <String, dynamic>{
  'employee_number_id': instance.employeeNumberId,
  'full_name': instance.fullName,
  'email': instance.email,
  'phone_number': instance.phoneNumber,
  'foundation_id': instance.foundationId,
  'gender': instance.gender,
  'dob': instance.dob,
  'address': instance.address,
  'birth_place': instance.birthPlace,
  'division_id': instance.divisionId,
  'education_level': instance.educationLevel,
  'hired_date': instance.hiredDate,
  'leave_date': instance.leaveDate,
  'employment_status': instance.employmentStatus,
  'position': instance.position,
  'is_teaching': instance.isTeaching,
};
