// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BillModel _$BillModelFromJson(Map<String, dynamic> json) => _BillModel(
  billId: (json['bill_id'] as num).toInt(),
  createdAt: json['created_at'] as String,
  studentId: json['student_id'] as String,
  studentFeeId: (json['student_fee_id'] as num?)?.toInt(),
  billMonth: json['bill_month'] as String,
  amount: (json['amount'] as num).toInt(),
  status: json['status'] as String,
  billName: json['bill_name'] as String,
  feeTypeId: (json['fee_type_id'] as num).toInt(),
  merchantCode: json['merchant_code'] as String?,
  reference: json['reference'] as String?,
  paymentUrl: json['payment_url'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$BillModelToJson(_BillModel instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'student_fee_id': instance.studentFeeId,
      'bill_month': instance.billMonth,
      'amount': instance.amount,
      'status': instance.status,
      'bill_name': instance.billName,
      'fee_type_id': instance.feeTypeId,
      'merchant_code': instance.merchantCode,
      'reference': instance.reference,
      'payment_url': instance.paymentUrl,
      if (instance.updatedAt case final value?) 'updated_at': value,
    };
