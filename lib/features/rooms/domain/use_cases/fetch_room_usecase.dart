import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/room.dart';
import '../repositories/school_repository.dart';

@injectable
class FetchRoomUseCase implements UseCase<Room, int> {
  final RoomRepository _repository;

  FetchRoomUseCase(this._repository);

  @override
  Future<Either<Failure, Room>> execute(int params) {
    return _repository.getRoom(params);
  }

}