import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/transactions/domain/entities/transaction.dart';
import 'package:edu_admin/features/transactions/domain/repositories/transaction_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateTransactionUseCase implements UseCase<void, Transaction>{
  final TransactionRepository _repository;

  CreateTransactionUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(Transaction params) {
    return _repository.createTransaction(params);
  }

}