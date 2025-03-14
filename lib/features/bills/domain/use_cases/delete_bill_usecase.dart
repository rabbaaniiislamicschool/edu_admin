import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/bills/domain/repositories/bill_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteBillUseCase implements UseCase<void, int>{
  final BillRepository _repository;

  DeleteBillUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(int params) {
    return _repository.deleteBill(params);
  }

}