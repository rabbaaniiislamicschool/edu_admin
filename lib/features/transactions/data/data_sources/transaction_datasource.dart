import 'package:edu_admin/core/utils/safe_request.dart';
import 'package:edu_admin/features/transactions/data/models/transaction_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/error/failure.dart';

abstract class TransactionDataSource {
  Future<Either<Failure, void>> createTransaction(TransactionModel transaction);

  Future<Either<Failure, void>> updateTransaction(TransactionModel transaction);

  Future<Either<Failure, void>> deleteTransaction(int transactionId);

  Future<Either<Failure, TransactionModel>> fetchTransaction(int transactionId);

  Future<Either<Failure, List<TransactionModel>>> fetchAllTransactions();
}

@LazySingleton(as: TransactionDataSource)
class TransactionDataSourceImpl implements TransactionDataSource {
  final SupabaseClient _client;

  TransactionDataSourceImpl(this._client);

  @override
  Future<Either<Failure, void>> createTransaction(TransactionModel transaction) {
    return safeRequest(() async {
      await _client.from('transactions').insert(transaction.toJson());
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, void>> deleteTransaction(int transactionId) {
    return safeRequest(() async {
      await _client
          .from('transactions')
          .delete()
          .eq('transaction_id', transactionId);
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, List<TransactionModel>>> fetchAllTransactions() {
    return safeRequest(() async {
      final result = await _client
          .from('transactions')
          .select('*')
          .withConverter((data) => data.map(TransactionModel.fromJson).toList());
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, TransactionModel>> fetchTransaction(int transactionId) {
    return safeRequest(() async {
      final result = await _client
          .from('transactions')
          .select('*')
          .eq('transaction_id', transactionId)
          .limit(1)
          .single()
          .withConverter(TransactionModel.fromJson);
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, void>> updateTransaction(TransactionModel transaction) {
    return safeRequest(() async {
      await _client
          .from('transactions')
          .update(transaction.toJson())
          .eq('transaction_id', '${transaction.transactionId}');
      return Right(null);
    });
  }
}
