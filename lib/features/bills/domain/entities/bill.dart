import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/bill_model.dart';

part 'bill.freezed.dart';
part 'bill.g.dart';

@freezed
abstract class Bill with _$Bill {
  factory Bill({
    required int billId,
    required String createdAt,
    required String studentId,
    int? studentFeeId,
    required String billMonth,
    required int amount,
    required String status,
    required String billName,
    required int feeTypeId,
    String? merchantCode,
    String? reference,
    String? paymentUrl,
    String? updatedAt,
  }) = _Bill;

  factory Bill.fromJson(Map<String, dynamic> json) =>
      _$BillFromJson(json);
}

extension BillX on Bill {
  BillModel toModel() => BillModel(
    billId: billId,
    createdAt: createdAt,
    studentId: studentId,
    studentFeeId: studentFeeId,
    billMonth: billMonth,
    amount: amount,
    status: status,
    billName: billName,
    feeTypeId: feeTypeId,
    merchantCode: merchantCode,
    reference: reference,
    paymentUrl: paymentUrl,
    updatedAt: updatedAt,
  );
}