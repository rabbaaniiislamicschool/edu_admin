import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/student_fee_model.dart';

part 'student_fee.freezed.dart';
part 'student_fee.g.dart';

@freezed
abstract class StudentFee with _$StudentFee {
  factory StudentFee({
    required int studentFeeId,
    required String studentId,
    required int classFeeId,
    required int amount,
    required String startPeriod,
    required String endPeriod,
    required String createdAt,
    required bool isCustom,
    required int feeTypeId,
    required int academicYearId,
  }) = _StudentFee;

  factory StudentFee.fromJson(Map<String, dynamic> json) =>
      _$StudentFeeFromJson(json);
}

extension StudentFeeX on StudentFee {
  StudentFeeModel toModel() => StudentFeeModel(
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