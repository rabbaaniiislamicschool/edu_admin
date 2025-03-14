// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoomModel _$RoomModelFromJson(Map<String, dynamic> json) => _RoomModel(
  roomId: (json['room_id'] as num).toInt(),
  roomName: json['room_name'] as String,
  createdAt: json['created_at'] as String,
  capacity: (json['capacity'] as num).toInt(),
  schoolId: (json['school_id'] as num).toInt(),
  roomNumber: (json['room_number'] as num).toInt(),
  classId: (json['class_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$RoomModelToJson(_RoomModel instance) =>
    <String, dynamic>{
      'room_name': instance.roomName,
      'capacity': instance.capacity,
      'school_id': instance.schoolId,
      'room_number': instance.roomNumber,
      'class_id': instance.classId,
    };
