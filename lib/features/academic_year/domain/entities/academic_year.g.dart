// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academic_year.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AcademicYear _$AcademicYearFromJson(Map<String, dynamic> json) =>
    _AcademicYear(
      academicYearId: (json['academicYearId'] as num).toInt(),
      foundationId: json['foundationId'] as String,
      startDateOddSemester: json['startDateOddSemester'] as String,
      endDateOddSemester: json['endDateOddSemester'] as String,
      isActive: json['isActive'] as bool,
      yearRange: json['yearRange'] as String,
      startDateEvenSemester: json['startDateEvenSemester'] as String,
      endDateEvenSemester: json['endDateEvenSemester'] as String,
    );

Map<String, dynamic> _$AcademicYearToJson(_AcademicYear instance) =>
    <String, dynamic>{
      'academicYearId': instance.academicYearId,
      'foundationId': instance.foundationId,
      'startDateOddSemester': instance.startDateOddSemester,
      'endDateOddSemester': instance.endDateOddSemester,
      'isActive': instance.isActive,
      'yearRange': instance.yearRange,
      'startDateEvenSemester': instance.startDateEvenSemester,
      'endDateEvenSemester': instance.endDateEvenSemester,
    };
