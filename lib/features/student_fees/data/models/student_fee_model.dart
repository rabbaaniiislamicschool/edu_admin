import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/student_fee.dart';

part 'student_fee_model.freezed.dart';
part 'student_fee_model.g.dart';

@freezed
abstract class StudentFeeModel with _$StudentFeeModel {
  const factory StudentFeeModel({
    @JsonKey(name: 'student_fee_id', includeToJson: false) required int studentFeeId,
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'class_fee_id') required int classFeeId,
    @JsonKey(name: 'amount') required int amount,
    @JsonKey(name: 'start_period') required String startPeriod,
    @JsonKey(name: 'end_period') required String endPeriod,
    @JsonKey(name: 'created_at', includeToJson: false) required String createdAt,
    @JsonKey(name: 'is_custom') required bool isCustom,
    @JsonKey(name: 'fee_type_id') required int feeTypeId,
    @JsonKey(name: 'academic_year_id') required int academicYearId,
  }) = _StudentFeeModel;

  factory StudentFeeModel.fromJson(Map<String, dynamic> json) =>
      _$StudentFeeModelFromJson(json);
}

extension StudentFeeModelX on StudentFeeModel {
  StudentFee toEntity() => StudentFee(
    studentFeeId: studentFeeId,
    studentId: studentId,
    classFeeId: classFeeId,
    amount: amount,
    startPeriod: startPeriod,
    endPeriod: endPeriod,
    createdAt: createdAt,
    isCustom: isCustom,
    feeTypeId: feeTypeId,
    academicYearId: academicYearId,
  );
}