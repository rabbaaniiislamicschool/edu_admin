import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/bill.dart';
import '../repositories/bill_repository.dart';

@injectable
class FetchBillUseCase implements UseCase<Bill, int> {
  final BillRepository _repository;

  FetchBillUseCase(this._repository);

  @override
  Future<Either<Failure, Bill>> execute(int params) {
    return _repository.getBill(params);
  }

}