import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/division.dart';

part 'division_model.freezed.dart';
part 'division_model.g.dart';

@freezed
abstract class DivisionModel with _$DivisionModel {
  const factory DivisionModel({
    @JsonKey(name: 'division_id', includeToJson: false) required int divisionId,
    @JsonKey(name: 'division_name') required String divisionName,
    @JsonKey(name: 'created_at', includeToJson: false) required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _DivisionModel;

  factory DivisionModel.fromJson(Map<String, dynamic> json) =>
      _$DivisionModelFromJson(json);
}

extension DivisionModelX on DivisionModel {
  Division toEntity() => Division(
    divisionId: divisionId,
    divisionName: divisionName,
    createdAt: createdAt,
    updatedAt: updatedAt,
  );
}