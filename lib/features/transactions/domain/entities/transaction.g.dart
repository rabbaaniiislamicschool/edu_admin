// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Transaction _$TransactionFromJson(Map<String, dynamic> json) => _Transaction(
  transactionId: (json['transactionId'] as num).toInt(),
  paymentDate: json['paymentDate'] as String,
  paymentMethod: json['paymentMethod'] as String,
  paymentReference: json['paymentReference'] as String,
  status: json['status'] as String,
  merchantCode: json['merchantCode'] as String?,
  publisherOrderId: json['publisherOrderId'] as String?,
  paymentAmount: (json['paymentAmount'] as num).toInt(),
  billId: (json['billId'] as num).toInt(),
  description: json['description'] as String?,
);

Map<String, dynamic> _$TransactionToJson(_Transaction instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'paymentDate': instance.paymentDate,
      'paymentMethod': instance.paymentMethod,
      'paymentReference': instance.paymentReference,
      'status': instance.status,
      'merchantCode': instance.merchantCode,
      'publisherOrderId': instance.publisherOrderId,
      'paymentAmount': instance.paymentAmount,
      'billId': instance.billId,
      'description': instance.description,
    };
