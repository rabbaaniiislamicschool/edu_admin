// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Room _$RoomFromJson(Map<String, dynamic> json) => _Room(
  roomId: (json['roomId'] as num).toInt(),
  roomName: json['roomName'] as String,
  createdAt: json['createdAt'] as String,
  capacity: (json['capacity'] as num).toInt(),
  schoolId: (json['schoolId'] as num).toInt(),
  roomNumber: (json['roomNumber'] as num).toInt(),
  classId: (json['classId'] as num?)?.toInt(),
);

Map<String, dynamic> _$RoomToJson(_Room instance) => <String, dynamic>{
  'roomId': instance.roomId,
  'roomName': instance.roomName,
  'createdAt': instance.createdAt,
  'capacity': instance.capacity,
  'schoolId': instance.schoolId,
  'roomNumber': instance.roomNumber,
  'classId': instance.classId,
};
