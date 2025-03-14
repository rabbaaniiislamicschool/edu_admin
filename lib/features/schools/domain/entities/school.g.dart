// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_School _$SchoolFromJson(Map<String, dynamic> json) => _School(
  schoolId: (json['schoolId'] as num).toInt(),
  schoolName: json['schoolName'] as String,
  address: json['address'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  email: json['email'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  branchId: (json['branchId'] as num).toInt(),
);

Map<String, dynamic> _$SchoolToJson(_School instance) => <String, dynamic>{
  'schoolId': instance.schoolId,
  'schoolName': instance.schoolName,
  'address': instance.address,
  'phoneNumber': instance.phoneNumber,
  'email': instance.email,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'branchId': instance.branchId,
};
