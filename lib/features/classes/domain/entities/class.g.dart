// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Class _$ClassFromJson(Map<String, dynamic> json) => _Class(
  classId: (json['classId'] as num).toInt(),
  schoolId: (json['schoolId'] as num).toInt(),
  className: json['className'] as String,
  description: json['description'] as String?,
  createdAt: json['createdAt'] as String,
  roomId: (json['roomId'] as num?)?.toInt(),
);

Map<String, dynamic> _$ClassToJson(_Class instance) => <String, dynamic>{
  'classId': instance.classId,
  'schoolId': instance.schoolId,
  'className': instance.className,
  'description': instance.description,
  'createdAt': instance.createdAt,
  'roomId': instance.roomId,
};
