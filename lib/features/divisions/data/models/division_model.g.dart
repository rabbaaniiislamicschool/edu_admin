// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DivisionModel _$DivisionModelFromJson(Map<String, dynamic> json) =>
    _DivisionModel(
      divisionId: (json['division_id'] as num?)?.toInt(),
      divisionName: json['division_name'] as String,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$DivisionModelToJson(_DivisionModel instance) =>
    <String, dynamic>{
      'division_name': instance.divisionName,
      if (instance.updatedAt case final value?) 'updated_at': value,
    };
