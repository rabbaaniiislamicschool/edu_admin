import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/class_fee.dart';

part 'class_fee_model.freezed.dart';
part 'class_fee_model.g.dart';

@freezed
abstract class ClassFeeModel with _$ClassFeeModel {
  const factory ClassFeeModel({
    @JsonKey(name: 'class_fee_id', includeToJson: false) required int classFeeId,
    @JsonKey(name: 'class_id') int? classId,
    required int amount,
    @JsonKey(name: 'created_at', includeToJson: false) required String createdAt,
    @JsonKey(name: 'fee_type_id') required int feeTypeId,
    @JsonKey(name: 'fee_name') String? feeName,
    String? description,
    @JsonKey(name: 'due_date') String? dueDate,
    @JsonKey(name: 'academic_year_id') required int academicYearId,
  }) = _ClassFeeModel;

  factory ClassFeeModel.fromJson(Map<String, dynamic> json) =>
      _$ClassFeeModelFromJson(json);
}

extension ClassFeeModelX on ClassFeeModel {
  ClassFee toEntity() => ClassFee(
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