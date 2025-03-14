import 'package:edu_admin/features/rooms/domain/entities/room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_event.freezed.dart';

@freezed
abstract class RoomEvent with _$RoomEvent {
  const factory RoomEvent.fetchRooms() = FetchRooms;
  const factory RoomEvent.getRoomById(int id) = GetRoomById;
  const factory RoomEvent.createRoom(Room room) = CreateRoom;
  const factory RoomEvent.deleteRoom(int id) = DeleteRoom;
  const factory RoomEvent.updateRoom(Room room) = UpdateRoom;
}