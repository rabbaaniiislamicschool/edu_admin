import 'dart:async';

import 'package:edu_admin/features/transactions/domain/use_cases/fetch_transaction_usecase.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/create_transaction_usecase.dart';
import '../../domain/use_cases/delete_transaction_usecase.dart';
import '../../domain/use_cases/fetch_all_transactions_usecase.dart';
import '../../domain/use_cases/update_transaction_usecase.dart';
import 'transaction_event.dart';
import 'transaction_state.dart';

@injectable
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final CreateTransactionUseCase _createTransactionUseCase;
  final DeleteTransactionUseCase _deleteTransactionUseCase;
  final UpdateTransactionUseCase _updateTransactionUseCase;
  final FetchTransactionUseCase _fetchTransactionUseCase;
  final FetchAllTransactionsUseCase _fetchAllTransactionsUseCase;

  TransactionBloc(
    this._fetchTransactionUseCase,
    this._fetchAllTransactionsUseCase,
    this._createTransactionUseCase,
    this._deleteTransactionUseCase,
    this._updateTransactionUseCase,
  ) : super(TransactionState.initial()) {
    on<FetchTransactions>(_onFetchTransactions);
    on<GetTransactionById>(_onGetTransactionById);
    on<DeleteTransaction>(_onDeleteTransaction);
    on<UpdateTransaction>(_onUpdateTransaction);
    on<CreateTransaction>(_onCreateTransaction);
  }

  Future<void> _onFetchTransactions(
    FetchTransactions event,
    Emitter<TransactionState> emit,
  ) async {
    emit(
      state.copyWith(
        status: TransactionStatus.loading,
        errorMessage: null,
        successMessage: null,
      ),
    );
    final result = await _fetchAllTransactionsUseCase.execute(null);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: TransactionStatus.failure,
        ),
      ),
      (transactions) => emit(
        state.copyWith(
          status: TransactionStatus.success,
          transactions: transactions,
        ),
      ),
    );
  }

  Future<void> _onGetTransactionById(
    GetTransactionById event,
    Emitter<TransactionState> emit,
  ) async {
    emit(state.copyWith(status: TransactionStatus.loading));
    final result = await _fetchTransactionUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: TransactionStatus.failure,
        ),
      ),
      (transaction) => emit(
        state.copyWith(
          status: TransactionStatus.success,
          transaction: transaction,
        ),
      ),
    );
  }

  Future<void> _onDeleteTransaction(
    DeleteTransaction event,
    Emitter<TransactionState> emit,
  ) async {
    emit(state.copyWith(status: TransactionStatus.loading));
    final result = await _deleteTransactionUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: TransactionStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: TransactionStatus.success,
        ),
      ),
    );
  }

  Future<void> _onUpdateTransaction(
    UpdateTransaction event,
    Emitter<TransactionState> emit,
  ) async {
    emit(state.copyWith(status: TransactionStatus.loading));
    final result = await _updateTransactionUseCase.execute(event.transaction);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: TransactionStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: TransactionStatus.success,
        ),
      ),
    );
  }

  Future<void> _onCreateTransaction(
    CreateTransaction event,
    Emitter<TransactionState> emit,
  ) async {
    emit(state.copyWith(status: TransactionStatus.loading));
    final result = await _createTransactionUseCase.execute(event.transaction);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: TransactionStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: TransactionStatus.success,
        ),
      ),
    );
  }
}
