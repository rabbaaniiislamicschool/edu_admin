import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/class_fee_model.dart';

part 'class_fee.freezed.dart';
part 'class_fee.g.dart';

@freezed
abstract class ClassFee with _$ClassFee {
  factory ClassFee({
    required int classFeeId,
    int? classId,
    required int amount,
    required String createdAt,
    required int feeTypeId,
    String? feeName,
    String? description,
    String? dueDate,
    required int academicYearId,
  }) = _ClassFee;

  factory ClassFee.fromJson(Map<String, dynamic> json) =>
      _$ClassFeeFromJson(json);
}

extension ClassFeeX on ClassFee {
  ClassFeeModel toModel() => ClassFeeModel(
    classFeeId: classFeeId,
    classId: classId,
    amount: amount,
    createdAt: createdAt,
    feeTypeId: feeTypeId,
    feeName: feeName,
    description: description,
    dueDate: dueDate,
    academicYearId: academicYearId,
  );
}