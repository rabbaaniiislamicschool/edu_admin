import 'package:edu_admin/features/bills/domain/entities/bill.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_event.freezed.dart';

@freezed
abstract class BillEvent with _$BillEvent {
  const factory BillEvent.fetchBills() = FetchBills;
  const factory BillEvent.getBillById(int id) = GetBillById;
  const factory BillEvent.createBill(Bill bill) = CreateBill;
  const factory BillEvent.deleteBill(int id) = DeleteBill;
  const factory BillEvent.updateBill(Bill bill) = UpdateBill;
}