import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/bills/domain/entities/bill.dart';
import 'package:fpdart/fpdart.dart';

abstract class BillRepository {
  Future<Either<Failure, void>> createBill(Bill bill);
  Future<Either<Failure, void>> updateBill(Bill bill);
  Future<Either<Failure, void>> deleteBill(int billId);
  Future<Either<Failure, Bill>> getBill(int billId);
  Future<Either<Failure, List<Bill>>> getAllBills();
}