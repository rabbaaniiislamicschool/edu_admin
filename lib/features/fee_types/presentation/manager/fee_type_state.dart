import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/fee_type.dart';
part 'fee_type_state.freezed.dart';

enum FeeTypeStatus { initial, loading, success, failure }


@freezed
abstract class FeeTypeState with _$FeeTypeState {
  const factory FeeTypeState({
    @Default(FeeTypeStatus.initial) FeeTypeStatus status,
    String? errorMessage,
    String? successMessage,
    List<FeeType>? feeTypes,
    FeeType? feeType,
  }) = _FeeTypeState;

  factory FeeTypeState.initial() => const FeeTypeState();
}