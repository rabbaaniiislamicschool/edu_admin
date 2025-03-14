// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) =>
    _TransactionModel(
      transactionId: (json['transaction_id'] as num).toInt(),
      paymentDate: json['payment_date'] as String,
      paymentMethod: json['payment_method'] as String,
      paymentReference: json['payment_reference'] as String,
      status: json['status'] as String,
      merchantCode: json['merchant_code'] as String?,
      publisherOrderId: json['publisher_order_id'] as String?,
      paymentAmount: (json['payment_amount'] as num).toInt(),
      billId: (json['bill_id'] as num).toInt(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$TransactionModelToJson(_TransactionModel instance) =>
    <String, dynamic>{
      'payment_date': instance.paymentDate,
      'payment_method': instance.paymentMethod,
      'payment_reference': instance.paymentReference,
      'status': instance.status,
      'merchant_code': instance.merchantCode,
      'publisher_order_id': instance.publisherOrderId,
      'payment_amount': instance.paymentAmount,
      'bill_id': instance.billId,
      'description': instance.description,
    };
