// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academic_year_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AcademicYearModel _$AcademicYearModelFromJson(Map<String, dynamic> json) =>
    _AcademicYearModel(
      academicYearId: (json['academic_year_id'] as num).toInt(),
      foundationId: json['foundation_id'] as String,
      startDateOddSemester: json['start_date_odd_semester'] as String,
      endDateOddSemester: json['end_date_odd_semester_odd_semester'] as String,
      isActive: json['is_active'] as bool,
      yearRange: json['year_range'] as String,
      startDateEvenSemester: json['start_date_even_semester'] as String,
      endDateEvenSemester: json['end_date_even_semester'] as String,
    );

Map<String, dynamic> _$AcademicYearModelToJson(_AcademicYearModel instance) =>
    <String, dynamic>{
      'foundation_id': instance.foundationId,
      'start_date_odd_semester': instance.startDateOddSemester,
      'end_date_odd_semester_odd_semester': instance.endDateOddSemester,
      'is_active': instance.isActive,
      'year_range': instance.yearRange,
      'start_date_even_semester': instance.startDateEvenSemester,
      'end_date_even_semester': instance.endDateEvenSemester,
    };
