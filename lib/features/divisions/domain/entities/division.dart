import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/division_model.dart';

part 'division.freezed.dart';

@freezed
abstract class Division with _$Division {
  factory Division({
    int? divisionId,
    required String divisionName,
    String? createdAt,
    String? updatedAt,
  }) = _Division;

  factory Division.fromExcelRow(List<dynamic> row) {
    if (row.isEmpty) {
      throw FormatException("Data tidak lengkap, harap periksa file Excel.");
    }

    String divisionName = row[0];

    if (divisionName.isEmpty) {
      throw FormatException("Kolom 'Nama Divisi' wajib diisi.");
    }

    return Division(divisionName: divisionName);
  }
}

extension DivisionX on Division {
  DivisionModel toModel() => DivisionModel(
    divisionId: divisionId,
    divisionName: divisionName,
    createdAt: createdAt,
    updatedAt: updatedAt,
  );
}
