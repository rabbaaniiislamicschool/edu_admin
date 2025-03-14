import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/import_employee.dart';

part 'import_employee_model.freezed.dart';

part 'import_employee_model.g.dart';

@freezed
abstract class ImportEmployeeModel with _$ImportEmployeeModel {
  factory ImportEmployeeModel({
    @JsonKey(name: 'default_password') required String defaultPassword,
    required List<ImportEmployeeModelData> data,
  }) = _ImportEmployeeModel;

  factory ImportEmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$ImportEmployeeModelFromJson(json);
}

@freezed
abstract class ImportEmployeeModelData with _$ImportEmployeeModelData {
  factory ImportEmployeeModelData({
    @JsonKey(name: 'employee_number_id') required String employeeNumberId,
    @JsonKey(name: 'full_name') required String fullName,
    required String email,
    @JsonKey(name: 'phone_number') required String phoneNumber,
    @JsonKey(name: 'foundation_id') required String foundationId,
    required String gender,
    required String dob,
    required String address,
    @JsonKey(name: 'birth_place') required String birthPlace,
    @JsonKey(name: 'division_id') String? divisionId,
    @JsonKey(name: 'education_level') required String educationLevel,
    @JsonKey(name: 'hired_date') required String hiredDate,
    @JsonKey(name: 'leave_date') String? leaveDate,
    @JsonKey(name: 'employment_status') required String employmentStatus,
    required String position,
    @JsonKey(name: 'is_teaching') required bool isTeaching,
  }) = _ImportEmployeeModelData;

  factory ImportEmployeeModelData.fromJson(Map<String, dynamic> json) =>
      _$ImportEmployeeModelDataFromJson(json);
}


extension ImportEmployeeModelX on ImportEmployeeModel {
  ImportEmployee toEntity() {
    return ImportEmployee(
      defaultPassword: defaultPassword,
      data: data.map((e) => e.toEntity()).toList(),
    );
  }
}

extension ImportEmployeeModelDataX on ImportEmployeeModelData {
  ImportEmployeeData toEntity() {
    return ImportEmployeeData(
      employeeNumberId: employeeNumberId,
      fullName: fullName,
      email: email,
      phoneNumber: phoneNumber,
      foundationId: foundationId,
      gender: gender,
      dob: dob,
      address: address,
      birthPlace: birthPlace,
      divisionId: divisionId,
      educationLevel: educationLevel,
      hiredDate: hiredDate,
      leaveDate: leaveDate,
      employmentStatus: employmentStatus,
      position: position,
      isTeaching: isTeaching,
    );
  }
}