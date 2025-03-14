import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/bills/domain/entities/bill.dart';
import 'package:edu_admin/features/bills/domain/repositories/bill_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateBillUseCase implements UseCase<void, Bill>{
  final BillRepository _repository;

  CreateBillUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(Bill params) {
    return _repository.createBill(params);
  }

}