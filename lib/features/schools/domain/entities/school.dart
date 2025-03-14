import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/school_model.dart';

part 'school.freezed.dart';
part 'school.g.dart';

@freezed
abstract class School with _$School {
  factory School({
    required int schoolId,
    required String schoolName,
    String? address,
    String? phoneNumber,
    String? email,
    double? latitude,
    double? longitude,
    String? createdAt,
    String? updatedAt,
    required int branchId,
  }) = _School;

  factory School.fromJson(Map<String, dynamic> json) =>
      _$SchoolFromJson(json);
}

extension SchoolX on School {
  SchoolModel toModel() => SchoolModel(
    schoolId: schoolId,
    schoolName: schoolName,
    address: address,
    phoneNumber: phoneNumber,
    email: email,
    latitude: latitude,
    longitude: longitude,
    createdAt: createdAt,
    updatedAt: updatedAt,
    branchId: branchId,
  );
}