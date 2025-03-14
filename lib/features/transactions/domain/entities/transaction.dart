import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/transaction_model.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
abstract class Transaction with _$Transaction {
  factory Transaction({
    required int transactionId,
    required String paymentDate,
    required String paymentMethod,
    required String paymentReference,
    required String status,
    String? merchantCode,
    String? publisherOrderId,
    required int paymentAmount,
    required int billId,
    String? description,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}

extension TransactionX on Transaction {
  TransactionModel toModel() => TransactionModel(
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