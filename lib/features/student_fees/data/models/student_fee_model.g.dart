// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_fee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudentFeeModel _$StudentFeeModelFromJson(Map<String, dynamic> json) =>
    _StudentFeeModel(
      studentFeeId: (json['student_fee_id'] as num).toInt(),
      studentId: json['student_id'] as String,
      classFeeId: (json['class_fee_id'] as num).toInt(),
      amount: (json['amount'] as num).toInt(),
      startPeriod: json['start_period'] as String,
      endPeriod: json['end_period'] as String,
      createdAt: json['created_at'] as String,
      isCustom: json['is_custom'] as bool,
      feeTypeId: (json['fee_type_id'] as num).toInt(),
      academicYearId: (json['academic_year_id'] as num).toInt(),
    );

Map<String, dynamic> _$StudentFeeModelToJson(_StudentFeeModel instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'class_fee_id': instance.classFeeId,
      'amount': instance.amount,
      'start_period': instance.startPeriod,
      'end_period': instance.endPeriod,
      'is_custom': instance.isCustom,
      'fee_type_id': instance.feeTypeId,
      'academic_year_id': instance.academicYearId,
    };
