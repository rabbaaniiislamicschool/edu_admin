import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/repositories/school_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../repositories/transaction_repository.dart';

@injectable
class DeleteTransactionUseCase implements UseCase<void, int>{
  final TransactionRepository _repository;

  DeleteTransactionUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(int params) {
    return _repository.deleteTransaction(params);
  }

}