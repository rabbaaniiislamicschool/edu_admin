import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/bills/data/data_sources/bill_datasource.dart';
import 'package:edu_admin/features/bills/data/models/bill_model.dart';
import 'package:edu_admin/features/bills/domain/entities/bill.dart';
import 'package:edu_admin/features/bills/domain/repositories/bill_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BillRepository)
class BillRepositoryImpl implements BillRepository {
  final BillDataSource _dataSource;

  BillRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, void>> createBill(Bill bill) {
    return _dataSource.createBill(bill.toModel());
  }

  @override
  Future<Either<Failure, void>> deleteBill(int billId) {
    return _dataSource.deleteBill(billId);
  }

  @override
  Future<Either<Failure, List<Bill>>> getAllBills() async {
    final result = await _dataSource.fetchAllBills();
    return result.map((data) => data.map((model) => model.toEntity()).toList());
  }

  @override
  Future<Either<Failure, Bill>> getBill(int billId) async {
    final result = await _dataSource.fetchBill(billId);
    return result.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, void>> updateBill(Bill bill) {
    return _dataSource.updateBill(bill.toModel());
  }
}
