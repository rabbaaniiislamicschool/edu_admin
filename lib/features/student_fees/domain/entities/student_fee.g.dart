// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_fee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudentFee _$StudentFeeFromJson(Map<String, dynamic> json) => _StudentFee(
  studentFeeId: (json['studentFeeId'] as num).toInt(),
  studentId: json['studentId'] as String,
  classFeeId: (json['classFeeId'] as num).toInt(),
  amount: (json['amount'] as num).toInt(),
  startPeriod: json['startPeriod'] as String,
  endPeriod: json['endPeriod'] as String,
  createdAt: json['createdAt'] as String,
  isCustom: json['isCustom'] as bool,
  feeTypeId: (json['feeTypeId'] as num).toInt(),
  academicYearId: (json['academicYearId'] as num).toInt(),
);

Map<String, dynamic> _$StudentFeeToJson(_StudentFee instance) =>
    <String, dynamic>{
      'studentFeeId': instance.studentFeeId,
      'studentId': instance.studentId,
      'classFeeId': instance.classFeeId,
      'amount': instance.amount,
      'startPeriod': instance.startPeriod,
      'endPeriod': instance.endPeriod,
      'createdAt': instance.createdAt,
      'isCustom': instance.isCustom,
      'feeTypeId': instance.feeTypeId,
      'academicYearId': instance.academicYearId,
    };
