import 'dart:async';

import 'package:edu_admin/features/rooms/domain/use_cases/fetch_room_usecase.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/create_room_usecase.dart';
import '../../domain/use_cases/delete_room_usecase.dart';
import '../../domain/use_cases/fetch_all_rooms_usecase.dart';
import '../../domain/use_cases/update_room_usecase.dart';
import 'room_event.dart';
import 'room_state.dart';

@injectable
class RoomBloc extends Bloc<RoomEvent, RoomState> {
  final CreateRoomUseCase _createRoomUseCase;
  final DeleteRoomUseCase _deleteRoomUseCase;
  final UpdateRoomUseCase _updateRoomUseCase;
  final FetchRoomUseCase _fetchRoomUseCase;
  final FetchAllRoomsUseCase _fetchAllRoomsUseCase;

  RoomBloc(
    this._fetchRoomUseCase,
    this._fetchAllRoomsUseCase,
    this._createRoomUseCase,
    this._deleteRoomUseCase,
    this._updateRoomUseCase,
  ) : super(RoomState.initial()) {
    on<FetchRooms>(_onFetchRooms);
    on<GetRoomById>(_onGetRoomById);
    on<DeleteRoom>(_onDeleteRoom);
    on<UpdateRoom>(_onUpdateRoom);
    on<CreateRoom>(_onCreateRoom);
  }

  Future<void> _onFetchRooms(
    FetchRooms event,
    Emitter<RoomState> emit,
  ) async {
    emit(
      state.copyWith(
        status: RoomStatus.loading,
        errorMessage: null,
        successMessage: null,
      ),
    );
    final result = await _fetchAllRoomsUseCase.execute(null);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: RoomStatus.failure,
        ),
      ),
      (rooms) => emit(
        state.copyWith(
          status: RoomStatus.success,
          rooms: rooms,
        ),
      ),
    );
  }

  Future<void> _onGetRoomById(
    GetRoomById event,
    Emitter<RoomState> emit,
  ) async {
    emit(state.copyWith(status: RoomStatus.loading));
    final result = await _fetchRoomUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: RoomStatus.failure,
        ),
      ),
      (room) => emit(
        state.copyWith(
          status: RoomStatus.success,
          room: room,
        ),
      ),
    );
  }

  Future<void> _onDeleteRoom(
    DeleteRoom event,
    Emitter<RoomState> emit,
  ) async {
    emit(state.copyWith(status: RoomStatus.loading));
    final result = await _deleteRoomUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: RoomStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: RoomStatus.success,
        ),
      ),
    );
  }

  Future<void> _onUpdateRoom(
    UpdateRoom event,
    Emitter<RoomState> emit,
  ) async {
    emit(state.copyWith(status: RoomStatus.loading));
    final result = await _updateRoomUseCase.execute(event.room);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: RoomStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: RoomStatus.success,
        ),
      ),
    );
  }

  Future<void> _onCreateRoom(
    CreateRoom event,
    Emitter<RoomState> emit,
  ) async {
    emit(state.copyWith(status: RoomStatus.loading));
    final result = await _createRoomUseCase.execute(event.room);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: RoomStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: RoomStatus.success,
        ),
      ),
    );
  }
}
