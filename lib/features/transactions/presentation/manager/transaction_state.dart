import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/transaction.dart';
part 'transaction_state.freezed.dart';

enum TransactionStatus { initial, loading, success, failure }


@freezed
abstract class TransactionState with _$TransactionState {
  const factory TransactionState({
    @Default(TransactionStatus.initial) TransactionStatus status,
    String? errorMessage,
    String? successMessage,
    List<Transaction>? transactions,
    Transaction? transaction,
  }) = _TransactionState;

  factory TransactionState.initial() => const TransactionState();
}