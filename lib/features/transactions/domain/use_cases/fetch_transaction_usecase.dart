import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../entities/transaction.dart';
import '../repositories/transaction_repository.dart';

@injectable
class FetchTransactionUseCase implements UseCase<Transaction, int> {
  final TransactionRepository _repository;

  FetchTransactionUseCase(this._repository);

  @override
  Future<Either<Failure, Transaction>> execute(int params) {
    return _repository.getTransaction(params);
  }

}