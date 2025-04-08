import 'package:edu_admin/core/model/upload_storage_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/foundation.dart';

part 'foundation_model.freezed.dart';

part 'foundation_model.g.dart';

@freezed
abstract class FoundationModel with _$FoundationModel {
  const factory FoundationModel({
    @JsonKey(name: 'foundation_id', includeToJson: false) String? foundationId,
    @JsonKey(name: 'foundation_name') required String foundationName,
    String? address,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? email,
    @JsonKey(name: 'created_at', includeToJson: false) String? createdAt,
    @JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt,
    @JsonKey(name: 'merchant_code') String? merchantCode,
    @JsonKey(name: 'merchant_api_key') String? merchantApiKey,
    @JsonKey(name: 'website_url') String? websiteUrl,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'is_admin', includeToJson: false) bool? isAdmin,
    @JsonKey(includeFromJson: false, includeToJson: false)
    UploadStorageModel? uploadStorage,
  }) = _FoundationModel;

  factory FoundationModel.fromJson(Map<String, dynamic> json) =>
      _$FoundationModelFromJson(json);
}

extension FoundationModelX on FoundationModel {
  Foundation toEntity() => Foundation(
    foundationName: foundationName,
    email: email,
    merchantCode: merchantCode,
    address: address,
    createdAt: createdAt,
    websiteUrl: websiteUrl,
    foundationId: foundationId,
    isAdmin: isAdmin,
    imageUrl: imageUrl,
    merchantApiKey: merchantApiKey,
    phoneNumber: phoneNumber,
    updatedAt: updatedAt,
    uploadStorage: uploadStorage?.toEntity(),
  );
}
