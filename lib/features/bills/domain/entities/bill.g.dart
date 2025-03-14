// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Bill _$BillFromJson(Map<String, dynamic> json) => _Bill(
  billId: (json['billId'] as num).toInt(),
  createdAt: json['createdAt'] as String,
  studentId: json['studentId'] as String,
  studentFeeId: (json['studentFeeId'] as num?)?.toInt(),
  billMonth: json['billMonth'] as String,
  amount: (json['amount'] as num).toInt(),
  status: json['status'] as String,
  billName: json['billName'] as String,
  feeTypeId: (json['feeTypeId'] as num).toInt(),
  merchantCode: json['merchantCode'] as String?,
  reference: json['reference'] as String?,
  paymentUrl: json['paymentUrl'] as String?,
  updatedAt: json['updatedAt'] as String?,
);

Map<String, dynamic> _$BillToJson(_Bill instance) => <String, dynamic>{
  'billId': instance.billId,
  'createdAt': instance.createdAt,
  'studentId': instance.studentId,
  'studentFeeId': instance.studentFeeId,
  'billMonth': instance.billMonth,
  'amount': instance.amount,
  'status': instance.status,
  'billName': instance.billName,
  'feeTypeId': instance.feeTypeId,
  'merchantCode': instance.merchantCode,
  'reference': instance.reference,
  'paymentUrl': instance.paymentUrl,
  'updatedAt': instance.updatedAt,
};
