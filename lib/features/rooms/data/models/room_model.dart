import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/room.dart';

part 'room_model.freezed.dart';
part 'room_model.g.dart';

@freezed
abstract class RoomModel with _$RoomModel {
  const factory RoomModel({
    @JsonKey(name: 'room_id', includeToJson: false) required int roomId,
    @JsonKey(name: 'room_name') required String roomName,
    @JsonKey(name: 'created_at', includeToJson: false) required String createdAt,
    @JsonKey(name: 'capacity') required int capacity,
    @JsonKey(name: 'school_id') required int schoolId,
    @JsonKey(name: 'room_number') required int roomNumber,
    @JsonKey(name: 'class_id') int? classId,
  }) = _RoomModel;

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);
}

extension RoomModelX on RoomModel {
  Room toEntity() => Room(
    roomId: roomId,
    roomName: roomName,
    createdAt: createdAt,
    capacity: capacity,
    schoolId: schoolId,
    roomNumber: roomNumber,
    classId: classId,
  );
}