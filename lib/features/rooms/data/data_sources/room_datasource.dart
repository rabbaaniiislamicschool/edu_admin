import 'package:edu_admin/core/utils/safe_request.dart';
import 'package:edu_admin/features/rooms/data/models/room_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/error/failure.dart';

abstract class RoomDataSource {
  Future<Either<Failure, void>> createRoom(RoomModel room);

  Future<Either<Failure, void>> updateRoom(RoomModel room);

  Future<Either<Failure, void>> deleteRoom(int roomId);

  Future<Either<Failure, RoomModel>> fetchRoom(int roomId);

  Future<Either<Failure, List<RoomModel>>> fetchAllRooms();
}

@LazySingleton(as: RoomDataSource)
class RoomDataSourceImpl implements RoomDataSource {
  final SupabaseClient _client;

  RoomDataSourceImpl(this._client);

  @override
  Future<Either<Failure, void>> createRoom(RoomModel room) {
    return safeRequest(() async {
      await _client.from('rooms').insert(room.toJson());
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, void>> deleteRoom(int roomId) {
    return safeRequest(() async {
      await _client
          .from('rooms')
          .delete()
          .eq('room_id', roomId);
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, List<RoomModel>>> fetchAllRooms() {
    return safeRequest(() async {
      final result = await _client
          .from('rooms')
          .select('*')
          .withConverter((data) => data.map(RoomModel.fromJson).toList());
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, RoomModel>> fetchRoom(int roomId) {
    return safeRequest(() async {
      final result = await _client
          .from('rooms')
          .select('*')
          .eq('room_id', roomId)
          .limit(1)
          .single()
          .withConverter(RoomModel.fromJson);
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, void>> updateRoom(RoomModel room) {
    return safeRequest(() async {
      await _client
          .from('rooms')
          .update(room.toJson())
          .eq('room_id', '${room.roomId}');
      return Right(null);
    });
  }
}
