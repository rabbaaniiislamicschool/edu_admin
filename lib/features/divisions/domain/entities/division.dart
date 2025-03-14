import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/division_model.dart';

part 'division.freezed.dart';
part 'division.g.dart';

@freezed
abstract class Division with _$Division {
  factory Division({
    required int divisionId,
    required String divisionName,
    required String createdAt,
    required String updatedAt,
  }) = _Division;

  factory Division.fromJson(Map<String, dynamic> json) =>
      _$DivisionFromJson(json);
}

extension DivisionX on Division {
  DivisionModel toModel() => DivisionModel(
    divisionId: divisionId,
    divisionName: divisionName,
    createdAt: createdAt,
    updatedAt: updatedAt,
  );
}