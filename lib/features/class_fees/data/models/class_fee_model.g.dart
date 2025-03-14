// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_fee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClassFeeModel _$ClassFeeModelFromJson(Map<String, dynamic> json) =>
    _ClassFeeModel(
      classFeeId: (json['class_fee_id'] as num).toInt(),
      classId: (json['class_id'] as num?)?.toInt(),
      amount: (json['amount'] as num).toInt(),
      createdAt: json['created_at'] as String,
      feeTypeId: (json['fee_type_id'] as num).toInt(),
      feeName: json['fee_name'] as String?,
      description: json['description'] as String?,
      dueDate: json['due_date'] as String?,
      academicYearId: (json['academic_year_id'] as num).toInt(),
    );

Map<String, dynamic> _$ClassFeeModelToJson(_ClassFeeModel instance) =>
    <String, dynamic>{
      'class_id': instance.classId,
      'amount': instance.amount,
      'fee_type_id': instance.feeTypeId,
      'fee_name': instance.feeName,
      'description': instance.description,
      'due_date': instance.dueDate,
      'academic_year_id': instance.academicYearId,
    };
