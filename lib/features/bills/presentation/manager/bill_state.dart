import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/bill.dart';
part 'bill_state.freezed.dart';

enum BillStatus { initial, loading, success, failure }


@freezed
abstract class BillState with _$BillState {
  const factory BillState({
    @Default(BillStatus.initial) BillStatus status,
    String? errorMessage,
    String? successMessage,
    List<Bill>? bills,
    Bill? bill,
  }) = _BillState;

  factory BillState.initial() => const BillState();
}