import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/bills/domain/entities/bill.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../repositories/bill_repository.dart';

@injectable
class FetchAllBillsUseCase implements UseCase<List<Bill>, void>{

  final BillRepository _repository;

  FetchAllBillsUseCase(this._repository);

  @override
  Future<Either<Failure, List<Bill>>> execute(void params) {
    return _repository.getAllBills();
  }
}