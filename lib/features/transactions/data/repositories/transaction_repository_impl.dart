import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/transactions/data/data_sources/transaction_datasource.dart';
import 'package:edu_admin/features/transactions/data/models/transaction_model.dart';
import 'package:edu_admin/features/transactions/domain/entities/transaction.dart';
import 'package:edu_admin/features/transactions/domain/repositories/transaction_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TransactionRepository)
class TransactionRepositoryImpl implements TransactionRepository {
  final TransactionDataSource _dataSource;

  TransactionRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, void>> createTransaction(Transaction transaction) {
    return _dataSource.createTransaction(transaction.toModel());
  }

  @override
  Future<Either<Failure, void>> deleteTransaction(int transactionId) {
    return _dataSource.deleteTransaction(transactionId);
  }

  @override
  Future<Either<Failure, List<Transaction>>> getAllTransactions() async {
    final result = await _dataSource.fetchAllTransactions();
    return result.map((data) => data.map((model) => model.toEntity()).toList());
  }

  @override
  Future<Either<Failure, Transaction>> getTransaction(int transactionId) async {
    final result = await _dataSource.fetchTransaction(transactionId);
    return result.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, void>> updateTransaction(Transaction transaction) {
    return _dataSource.updateTransaction(transaction.toModel());
  }
}
