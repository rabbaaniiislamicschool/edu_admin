import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/school.dart';
part 'school_state.freezed.dart';

enum SchoolStatus {
  initial,
  loading,
  success,
  failure,
  insertSuccess,
  updateSuccess,
  deleteSuccess,
  importSuccess,
}

@freezed
abstract class SchoolState with _$SchoolState {
  const factory SchoolState({
    @Default(SchoolStatus.initial) SchoolStatus status,
    String? errorMessage,
    String? successMessage,
    List<School>? schools,
    School? school,
  }) = _SchoolState;

  factory SchoolState.initial() => const SchoolState();
}
