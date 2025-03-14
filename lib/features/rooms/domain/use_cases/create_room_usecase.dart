import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:edu_admin/features/schools/domain/repositories/school_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/room.dart';
import '../repositories/school_repository.dart';

@injectable
class CreateRoomUseCase implements UseCase<void, Room>{
  final RoomRepository _repository;

  CreateRoomUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(Room params) {
    return _repository.createRoom(params);
  }

}