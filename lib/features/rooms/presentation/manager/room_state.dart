import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/room.dart';
part 'room_state.freezed.dart';

enum RoomStatus { initial, loading, success, failure }


@freezed
abstract class RoomState with _$RoomState {
  const factory RoomState({
    @Default(RoomStatus.initial) RoomStatus status,
    String? errorMessage,
    String? successMessage,
    List<Room>? rooms,
    Room? room,
  }) = _RoomState;

  factory RoomState.initial() => const RoomState();
}