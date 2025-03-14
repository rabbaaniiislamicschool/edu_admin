import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/transaction.dart';
import '../repositories/transaction_repository.dart';

@injectable
class FetchAllTransactionsUseCase implements UseCase<List<Transaction>, void>{

  final TransactionRepository _repository;

  FetchAllTransactionsUseCase(this._repository);

  @override
  Future<Either<Failure, List<Transaction>>> execute(void params) {
    return _repository.getAllTransactions();
  }
}