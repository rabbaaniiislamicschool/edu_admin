import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/division.dart';
part 'division_state.freezed.dart';

enum DivisionStatus {
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
abstract class DivisionState with _$DivisionState {
  const factory DivisionState({
    @Default(DivisionStatus.initial) DivisionStatus status,
    String? errorMessage,
    String? successMessage,
    List<Division>? divisions,
    Division? division,
  }) = _DivisionState;

  factory DivisionState.initial() => const DivisionState();
}
