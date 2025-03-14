import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:edu_admin/features/schools/domain/repositories/school_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/transaction.dart';
import '../repositories/transaction_repository.dart';

@injectable
class UpdateTransactionUseCase implements UseCase<void, Transaction>{
  final TransactionRepository _repository;

  UpdateTransactionUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(Transaction params) {
    return _repository.updateTransaction(params);
  }

}