import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/transactions/domain/entities/transaction.dart';
import 'package:fpdart/fpdart.dart';

abstract class TransactionRepository {
  Future<Either<Failure, void>> createTransaction(Transaction transaction);
  Future<Either<Failure, void>> updateTransaction(Transaction transaction);
  Future<Either<Failure, void>> deleteTransaction(int transactionId);
  Future<Either<Failure, Transaction>> getTransaction(int transactionId);
  Future<Either<Failure, List<Transaction>>> getAllTransactions();
}