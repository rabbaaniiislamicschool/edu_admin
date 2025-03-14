import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/remote/models/import_employee_model.dart';

part 'import_employee.freezed.dart';


@freezed
abstract class ImportEmployee with _$ImportEmployee {
  factory ImportEmployee({
    required String defaultPassword,
    required List<ImportEmployeeData> data,
  }) = _ImportEmployee;
}

@freezed
abstract class ImportEmployeeData with _$ImportEmployeeData {
  factory ImportEmployeeData({
    required String employeeNumberId,
    required String fullName,
    required String email,
    required String phoneNumber,
    required String foundationId,
    required String gender,
    required String dob,
    required String address,
    required String birthPlace,
    String? divisionId,
    required String educationLevel,
    required String hiredDate,
    String? leaveDate,
    required String employmentStatus,
    required String position,
    required bool isTeaching,
  }) = _ImportEmployeeData;
}

extension ImportEmployeeX on ImportEmployee {
  ImportEmployeeModel toModel() {
    return ImportEmployeeModel(
      defaultPassword: defaultPassword,
      data: data.map((e) => e.toModel()).toList(),
    );
  }
}

extension ImportEmployeeDataX on ImportEmployeeData {
  ImportEmployeeModelData toModel() {
    return ImportEmployeeModelData(
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