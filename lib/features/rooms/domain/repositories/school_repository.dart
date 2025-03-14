import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/rooms/domain/entities/room.dart';
import 'package:fpdart/fpdart.dart';

abstract class RoomRepository {
  Future<Either<Failure, void>> createRoom(Room room);
  Future<Either<Failure, void>> updateRoom(Room room);
  Future<Either<Failure, void>> deleteRoom(int roomId);
  Future<Either<Failure, Room>> getRoom(int roomId);
  Future<Either<Failure, List<Room>>> getAllRooms();
}