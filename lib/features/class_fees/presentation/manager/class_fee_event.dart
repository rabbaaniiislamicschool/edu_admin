import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/class_fee.dart';

part 'class_fee_event.freezed.dart';

@freezed
abstract class ClassFeeEvent with _$ClassFeeEvent {
  const factory ClassFeeEvent.fetchClassFees() = FetchClassFees;
  const factory ClassFeeEvent.getClassFeeById(int id) = GetClassFeeById;
  const factory ClassFeeEvent.createClassFee(ClassFee classFee) = CreateClassFee;
  const factory ClassFeeEvent.deleteClassFee(int id) = DeleteClassFee;
  const factory ClassFeeEvent.updateClassFee(ClassFee classFee) = UpdateClassFee;
}