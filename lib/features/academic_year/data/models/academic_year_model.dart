import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/academic_year.dart';

part 'academic_year_model.freezed.dart';
part 'academic_year_model.g.dart';

@freezed
abstract class AcademicYearModel with _$AcademicYearModel {
  const factory AcademicYearModel({
    @JsonKey(name: 'academic_year_id', includeToJson: false) required int academicYearId,
    @JsonKey(name: 'foundation_id') required String foundationId,
    @JsonKey(name: 'start_date_odd_semester') required String startDateOddSemester,
    @JsonKey(name: 'end_date_odd_semester_odd_semester') required String endDateOddSemester,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'year_range') required String yearRange,
    @JsonKey(name: 'start_date_even_semester') required String startDateEvenSemester,
    @JsonKey(name: 'end_date_even_semester') required String endDateEvenSemester,
  }) = _AcademicYearModel;

  factory AcademicYearModel.fromJson(Map<String, dynamic> json) =>
      _$AcademicYearModelFromJson(json);
}

extension AcademicYearModelX on AcademicYearModel {
  AcademicYear toEntity() => AcademicYear(
    academicYearId: academicYearId,
    foundationId: foundationId,
    startDateOddSemester: startDateOddSemester,
    endDateOddSemester: endDateOddSemester,
    isActive: isActive,
    yearRange: yearRange,
    startDateEvenSemester: startDateEvenSemester,
    endDateEvenSemester: endDateEvenSemester,
  );
}