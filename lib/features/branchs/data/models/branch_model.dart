import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/model/upload_storage_model.dart';
import '../../../foundations/data/models/foundation_model.dart';
import '../../domain/entities/branch.dart';

part 'branch_model.freezed.dart';
part 'branch_model.g.dart';

@freezed
abstract class BranchModel with _$BranchModel {
  const factory BranchModel({
    @JsonKey(name: 'branch_id', includeToJson: false) int? branchId,
    @JsonKey(name: 'foundation_id') required String foundationId,
    @JsonKey(name: 'branch_name') required String branchName,
    String? address,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? email,
    double? latitude,
    double? longitude,
    @JsonKey(name: 'created_at', includeToJson: false) String? createdAt,
    @JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt,
    @JsonKey(name: 'image_url', includeIfNull: false) String? imageUrl,
    @JsonKey(includeToJson: false) FoundationModel? foundation,
    @JsonKey(includeFromJson: false, includeToJson: false) UploadStorageModel? uploadStorage,
  }) = _BranchModel;

  factory BranchModel.fromJson(Map<String, dynamic> json) =>
      _$BranchModelFromJson(json);
}

extension BranchModelX on BranchModel {
  Branch toEntity() => Branch(
    branchId: branchId,
    foundationId: foundationId,
    branchName: branchName,
    address: address,
    phoneNumber: phoneNumber,
    email: email,
    latitude: latitude,
    longitude: longitude,
    createdAt: createdAt,
    updatedAt: updatedAt,
    imageUrl: imageUrl,
    foundation: foundation?.toEntity(),
  );
}