import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/academic_year_model.dart';

part 'academic_year.freezed.dart';
part 'academic_year.g.dart';

@freezed
abstract class AcademicYear with _$AcademicYear {
  factory AcademicYear({
    required int academicYearId,
    required String foundationId,
    required String startDateOddSemester,
    required String endDateOddSemester,
    required bool isActive,
    required String yearRange,
    required String startDateEvenSemester,
    required String endDateEvenSemester,
  }) = _AcademicYear;

  factory AcademicYear.fromJson(Map<String, dynamic> json) =>
      _$AcademicYearFromJson(json);
}

extension AcademicYearX on AcademicYear {
  AcademicYearModel toModel() => AcademicYearModel(
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