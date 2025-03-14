// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BranchModel _$BranchModelFromJson(Map<String, dynamic> json) => _BranchModel(
  branchId: (json['branch_id'] as num?)?.toInt(),
  foundationId: json['foundation_id'] as String,
  branchName: json['branch_name'] as String,
  address: json['address'] as String?,
  phoneNumber: json['phone_number'] as String?,
  email: json['email'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  imageUrl: json['image_url'] as String?,
  foundation:
      json['foundation'] == null
          ? null
          : FoundationModel.fromJson(
            json['foundation'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$BranchModelToJson(_BranchModel instance) =>
    <String, dynamic>{
      'foundation_id': instance.foundationId,
      'branch_name': instance.branchName,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      if (instance.updatedAt case final value?) 'updated_at': value,
      if (instance.imageUrl case final value?) 'image_url': value,
    };
