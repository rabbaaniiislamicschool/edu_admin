// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  userId: json['user_id'] as String,
  foundationId: json['foundation_id'] as String,
  fullName: json['full_name'] as String,
  email: json['email'] as String,
  phoneNumber: json['phone_number'] as String,
  gender: json['gender'] as String,
  dob: json['dob'] as String,
  address: json['address'] as String?,
  createdAt: json['created_at'] as String,
  birthPlace: json['birth_place'] as String?,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'foundation_id': instance.foundationId,
      'full_name': instance.fullName,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'gender': instance.gender,
      'dob': instance.dob,
      'address': instance.address,
      'created_at': instance.createdAt,
      'birth_place': instance.birthPlace,
    };
