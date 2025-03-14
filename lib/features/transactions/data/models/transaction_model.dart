import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/transaction.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
abstract class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    @JsonKey(name: 'transaction_id', includeToJson: false) required int transactionId,
    @JsonKey(name: 'payment_date') required String paymentDate,
    @JsonKey(name: 'payment_method') required String paymentMethod,
    @JsonKey(name: 'payment_reference') required String paymentReference,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'merchant_code') String? merchantCode,
    @JsonKey(name: 'publisher_order_id') String? publisherOrderId,
    @JsonKey(name: 'payment_amount') required int paymentAmount,
    @JsonKey(name: 'bill_id') required int billId,
    @JsonKey(name: 'description') String? description,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}

extension TransactionModelX on TransactionModel {
  Transaction toEntity() => Transaction(
    transactionId: transactionId,
    paymentDate: paymentDate,
    paymentMethod: paymentMethod,
    paymentReference: paymentReference,
    status: status,
    merchantCode: merchantCode,
    publisherOrderId: publisherOrderId,
    paymentAmount: paymentAmount,
    billId: billId,
    description: description,
  );
}