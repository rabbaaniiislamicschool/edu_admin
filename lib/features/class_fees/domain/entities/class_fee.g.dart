// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_fee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClassFee _$ClassFeeFromJson(Map<String, dynamic> json) => _ClassFee(
  classFeeId: (json['classFeeId'] as num).toInt(),
  classId: (json['classId'] as num?)?.toInt(),
  amount: (json['amount'] as num).toInt(),
  createdAt: json['createdAt'] as String,
  feeTypeId: (json['feeTypeId'] as num).toInt(),
  feeName: json['feeName'] as String?,
  description: json['description'] as String?,
  dueDate: json['dueDate'] as String?,
  academicYearId: (json['academicYearId'] as num).toInt(),
);

Map<String, dynamic> _$ClassFeeToJson(_ClassFee instance) => <String, dynamic>{
  'classFeeId': instance.classFeeId,
  'classId': instance.classId,
  'amount': instance.amount,
  'createdAt': instance.createdAt,
  'feeTypeId': instance.feeTypeId,
  'feeName': instance.feeName,
  'description': instance.description,
  'dueDate': instance.dueDate,
  'academicYearId': instance.academicYearId,
};
