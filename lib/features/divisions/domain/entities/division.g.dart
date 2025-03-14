// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Division _$DivisionFromJson(Map<String, dynamic> json) => _Division(
  divisionId: (json['divisionId'] as num).toInt(),
  divisionName: json['divisionName'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
);

Map<String, dynamic> _$DivisionToJson(_Division instance) => <String, dynamic>{
  'divisionId': instance.divisionId,
  'divisionName': instance.divisionName,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};
