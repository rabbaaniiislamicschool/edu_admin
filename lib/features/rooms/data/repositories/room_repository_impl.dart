import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/rooms/data/data_sources/room_datasource.dart';
import 'package:edu_admin/features/rooms/data/models/room_model.dart';
import 'package:edu_admin/features/rooms/domain/entities/room.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/school_repository.dart';

@LazySingleton(as: RoomRepository)
class RoomRepositoryImpl implements RoomRepository {
  final RoomDataSource _dataSource;

  RoomRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, void>> createRoom(Room room) {
    return _dataSource.createRoom(room.toModel());
  }

  @override
  Future<Either<Failure, void>> deleteRoom(int roomId) {
    return _dataSource.deleteRoom(roomId);
  }

  @override
  Future<Either<Failure, List<Room>>> getAllRooms() async {
    final result = await _dataSource.fetchAllRooms();
    return result.map((data) => data.map((model) => model.toEntity()).toList());
  }

  @override
  Future<Either<Failure, Room>> getRoom(int roomId) async {
    final result = await _dataSource.fetchRoom(roomId);
    return result.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, void>> updateRoom(Room room) {
    return _dataSource.updateRoom(room.toModel());
  }
}
