import 'package:edu_admin/features/transactions/domain/entities/transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_event.freezed.dart';

@freezed
abstract class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.fetchTransactions() = FetchTransactions;
  const factory TransactionEvent.getTransactionById(int id) = GetTransactionById;
  const factory TransactionEvent.createTransaction(Transaction transaction) = CreateTransaction;
  const factory TransactionEvent.deleteTransaction(int id) = DeleteTransaction;
  const factory TransactionEvent.updateTransaction(Transaction transaction) = UpdateTransaction;
}