import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/student_fee.dart';

part 'student_fee_event.freezed.dart';

@freezed
abstract class StudentFeeEvent with _$StudentFeeEvent {
  const factory StudentFeeEvent.fetchStudentFees() = FetchStudentFees;
  const factory StudentFeeEvent.getStudentFeeById(int id) = GetStudentFeeById;
  const factory StudentFeeEvent.createStudentFee(StudentFee studentFee) = CreateStudentFee;
  const factory StudentFeeEvent.deleteStudentFee(int id) = DeleteStudentFee;
  const factory StudentFeeEvent.updateStudentFee(StudentFee studentFee) = UpdateStudentFee;
}