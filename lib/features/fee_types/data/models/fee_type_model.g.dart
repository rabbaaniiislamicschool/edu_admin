// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fee_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeeTypeModel _$FeeTypeModelFromJson(Map<String, dynamic> json) =>
    _FeeTypeModel(
      feeTypeId: (json['fee_type_id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      frequency: json['frequency'] as String,
      createdAt: json['created_at'] as String,
      foundationId: json['foundation_id'] as String,
      deadlineDate: (json['deadline_date'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FeeTypeModelToJson(_FeeTypeModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'frequency': instance.frequency,
      'foundation_id': instance.foundationId,
      'deadline_date': instance.deadlineDate,
    };
