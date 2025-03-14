import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/fee_type.dart';

part 'fee_type_model.freezed.dart';
part 'fee_type_model.g.dart';

@freezed
abstract class FeeTypeModel with _$FeeTypeModel {
  const factory FeeTypeModel({
    @JsonKey(name: 'fee_type_id', includeToJson: false) required int feeTypeId,
    @JsonKey(name: 'name') required String name,
    String? description,
    @JsonKey(name: 'frequency') required String frequency,
    @JsonKey(name: 'created_at', includeToJson: false) required String createdAt,
    @JsonKey(name: 'foundation_id') required String foundationId,
    @JsonKey(name: 'deadline_date') int? deadlineDate,
  }) = _FeeTypeModel;

  factory FeeTypeModel.fromJson(Map<String, dynamic> json) =>
      _$FeeTypeModelFromJson(json);
}

extension FeeTypeModelX on FeeTypeModel {
  FeeType toEntity() => FeeType(
    feeTypeId: feeTypeId,
    name: name,
    description: description,
    frequency: frequency,
    createdAt: createdAt,
    foundationId: foundationId,
    deadlineDate: deadlineDate,
  );
}