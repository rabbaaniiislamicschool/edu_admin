import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/bill.dart';

part 'bill_model.freezed.dart';
part 'bill_model.g.dart';

@freezed
abstract class BillModel with _$BillModel {
  const factory BillModel({
    @JsonKey(name: 'bill_id', includeToJson: false) required int billId,
    @JsonKey(name: 'created_at', includeToJson: false) required String createdAt,
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'student_fee_id') int? studentFeeId,
    @JsonKey(name: 'bill_month') required String billMonth,
    required int amount,
    required String status,
    @JsonKey(name: 'bill_name') required String billName,
    @JsonKey(name: 'fee_type_id') required int feeTypeId,
    @JsonKey(name: 'merchant_code') String? merchantCode,
    String? reference,
    @JsonKey(name: 'payment_url') String? paymentUrl,
    @JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt,
  }) = _BillModel;

  factory BillModel.fromJson(Map<String, dynamic> json) =>
      _$BillModelFromJson(json);
}

extension BillModelX on BillModel {
  Bill toEntity() => Bill(
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