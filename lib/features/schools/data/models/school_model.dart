import 'package:edu_admin/core/model/upload_storage_model.dart';
import 'package:edu_admin/features/branchs/data/models/branch_model.dart';
import 'package:edu_admin/features/branchs/domain/entities/branch.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/school.dart';

part 'school_model.freezed.dart';
part 'school_model.g.dart';

@freezed
abstract class SchoolModel with _$SchoolModel {
  const factory SchoolModel({
    @JsonKey(name: 'school_id', includeToJson: false) int? schoolId,
    @JsonKey(name: 'school_name') required String schoolName,
    String? address,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? email,
    double? latitude,
    double? longitude,
    @JsonKey(name: 'created_at', includeToJson: false) String? createdAt,
    @JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt,
    @JsonKey(name: 'image_url', includeIfNull: false) String? imageUrl,
    @JsonKey(name: 'branch_id') required int branchId,
    @JsonKey(name: 'branches', includeToJson: false) BranchModel? branch,
    @JsonKey(includeFromJson: false, includeToJson: false)
    UploadStorageModel? uploadStorage,
  }) = _SchoolModel;

  factory SchoolModel.fromJson(Map<String, dynamic> json) =>
      _$SchoolModelFromJson(json);
}

extension SchoolModelX on SchoolModel {
  School toEntity() => School(
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
    imageUrl: imageUrl,
    branch: branch?.toEntity(),
    uploadStorage: uploadStorage?.toEntity(),
  );
}
