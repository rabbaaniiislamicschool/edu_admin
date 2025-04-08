// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SchoolModel _$SchoolModelFromJson(Map<String, dynamic> json) => _SchoolModel(
  schoolId: (json['school_id'] as num?)?.toInt(),
  schoolName: json['school_name'] as String,
  address: json['address'] as String?,
  phoneNumber: json['phone_number'] as String?,
  email: json['email'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  imageUrl: json['image_url'] as String?,
  branchId: (json['branch_id'] as num).toInt(),
  branch:
      json['branches'] == null
          ? null
          : BranchModel.fromJson(json['branches'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SchoolModelToJson(_SchoolModel instance) =>
    <String, dynamic>{
      'school_name': instance.schoolName,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      if (instance.updatedAt case final value?) 'updated_at': value,
      if (instance.imageUrl case final value?) 'image_url': value,
      'branch_id': instance.branchId,
    };
