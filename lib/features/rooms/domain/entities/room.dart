import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/room_model.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
abstract class Room with _$Room {
  factory Room({
    required int roomId,
    required String roomName,
    required String createdAt,
    required int capacity,
    required int schoolId,
    required int roomNumber,
    int? classId,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) =>
      _$RoomFromJson(json);
}

extension RoomX on Room {
  RoomModel toModel() => RoomModel(
    roomId: roomId,
    roomName: roomName,
    createdAt: createdAt,
    capacity: capacity,
    schoolId: schoolId,
    roomNumber: roomNumber,
    classId: classId,
  );
}