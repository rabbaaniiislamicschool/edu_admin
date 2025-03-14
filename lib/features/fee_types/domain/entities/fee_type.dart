import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/fee_type_model.dart';

part 'fee_type.freezed.dart';

@freezed
abstract class FeeType with _$FeeType {
  factory FeeType({
    required int feeTypeId,
    required String name,
    String? description,
    required String frequency,
    required String createdAt,
    required String foundationId,
    int? deadlineDate,
  }) = _FeeType;
}

extension FeeTypeX on FeeType {
  FeeTypeModel toModel() => FeeTypeModel(
    feeTypeId: feeTypeId,
    name: name,
    description: description,
    frequency: frequency,
    createdAt: createdAt,
    foundationId: foundationId,
    deadlineDate: deadlineDate,
  );
}