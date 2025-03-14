import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/usecase/usecase.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/room.dart';
import '../repositories/school_repository.dart';

@injectable
class FetchAllRoomsUseCase implements UseCase<List<Room>, void>{

  final RoomRepository _repository;

  FetchAllRoomsUseCase(this._repository);

  @override
  Future<Either<Failure, List<Room>>> execute(void params) async {
    return _repository.getAllRooms();
  }
}