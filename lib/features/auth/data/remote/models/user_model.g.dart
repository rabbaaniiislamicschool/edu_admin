// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  userId: json['user_id'] as String?,
  schoolId: (json['school_id'] as num).toInt(),
  fullName: json['full_name'] as String,
  phoneNumber: json['phone_number'] as String,
  gender: json['gender'] as String,
  dob: json['dob'] as String,
  birthPlace: json['birth_place'] as String,
  email: json['email'] as String?,
  address: json['address'] as String?,
  createdAt: json['created_at'] as String?,
  imageUrl: json['image_url'] as String?,
  school:
      json['schools'] == null
          ? null
          : SchoolModel.fromJson(json['schools'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      if (instance.userId case final value?) 'user_id': value,
      'school_id': instance.schoolId,
      'full_name': instance.fullName,
      'phone_number': instance.phoneNumber,
      'gender': instance.gender,
      'dob': instance.dob,
      'birth_place': instance.birthPlace,
      'email': instance.email,
      'address': instance.address,
      'image_url': instance.imageUrl,
    };
