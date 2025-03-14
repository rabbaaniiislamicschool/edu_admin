// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foundation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FoundationModel _$FoundationModelFromJson(Map<String, dynamic> json) =>
    _FoundationModel(
      foundationId: json['foundation_id'] as String?,
      foundationName: json['foundation_name'] as String,
      address: json['address'] as String?,
      phoneNumber: json['phone_number'] as String?,
      email: json['email'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      merchantCode: json['merchant_code'] as String?,
      merchantApiKey: json['merchant_api_key'] as String?,
      websiteUrl: json['website_url'] as String?,
      imageUrl: json['image_url'] as String?,
      isAdmin: json['is_admin'] as bool?,
    );

Map<String, dynamic> _$FoundationModelToJson(_FoundationModel instance) =>
    <String, dynamic>{
      'foundation_name': instance.foundationName,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      if (instance.updatedAt case final value?) 'updated_at': value,
      'merchant_code': instance.merchantCode,
      'merchant_api_key': instance.merchantApiKey,
      'website_url': instance.websiteUrl,
      'image_url': instance.imageUrl,
    };
