import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/fee_type.dart';

part 'fee_type_event.freezed.dart';

@freezed
abstract class FeeTypeEvent with _$FeeTypeEvent {
  const factory FeeTypeEvent.fetchFeeTypes() = FetchFeeTypes;
  const factory FeeTypeEvent.getFeeTypeById(int id) = GetFeeTypeById;
  const factory FeeTypeEvent.createFeeType(FeeType feeType) = CreateFeeType;
  const factory FeeTypeEvent.deleteFeeType(int id) = DeleteFeeType;
  const factory FeeTypeEvent.updateFeeType(FeeType feeType) = UpdateFeeType;
}