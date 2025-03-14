// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Room {

 int get roomId; String get roomName; String get createdAt; int get capacity; int get schoolId; int get roomNumber; int? get classId;
/// Create a copy of Room
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomCopyWith<Room> get copyWith => _$RoomCopyWithImpl<Room>(this as Room, _$identity);

  /// Serializes this Room to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Room&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.roomName, roomName) || other.roomName == roomName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.classId, classId) || other.classId == classId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roomId,roomName,createdAt,capacity,schoolId,roomNumber,classId);

@override
String toString() {
  return 'Room(roomId: $roomId, roomName: $roomName, createdAt: $createdAt, capacity: $capacity, schoolId: $schoolId, roomNumber: $roomNumber, classId: $classId)';
}


}

/// @nodoc
abstract mixin class $RoomCopyWith<$Res>  {
  factory $RoomCopyWith(Room value, $Res Function(Room) _then) = _$RoomCopyWithImpl;
@useResult
$Res call({
 int roomId, String roomName, String createdAt, int capacity, int schoolId, int roomNumber, int? classId
});




}
/// @nodoc
class _$RoomCopyWithImpl<$Res>
    implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._self, this._then);

  final Room _self;
  final $Res Function(Room) _then;

/// Create a copy of Room
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomId = null,Object? roomName = null,Object? createdAt = null,Object? capacity = null,Object? schoolId = null,Object? roomNumber = null,Object? classId = freezed,}) {
  return _then(_self.copyWith(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,roomName: null == roomName ? _self.roomName : roomName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int,roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as int,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Room implements Room {
   _Room({required this.roomId, required this.roomName, required this.createdAt, required this.capacity, required this.schoolId, required this.roomNumber, this.classId});
  factory _Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);

@override final  int roomId;
@override final  String roomName;
@override final  String createdAt;
@override final  int capacity;
@override final  int schoolId;
@override final  int roomNumber;
@override final  int? classId;

/// Create a copy of Room
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomCopyWith<_Room> get copyWith => __$RoomCopyWithImpl<_Room>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoomToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Room&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.roomName, roomName) || other.roomName == roomName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.classId, classId) || other.classId == classId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roomId,roomName,createdAt,capacity,schoolId,roomNumber,classId);

@override
String toString() {
  return 'Room(roomId: $roomId, roomName: $roomName, createdAt: $createdAt, capacity: $capacity, schoolId: $schoolId, roomNumber: $roomNumber, classId: $classId)';
}


}

/// @nodoc
abstract mixin class _$RoomCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$RoomCopyWith(_Room value, $Res Function(_Room) _then) = __$RoomCopyWithImpl;
@override @useResult
$Res call({
 int roomId, String roomName, String createdAt, int capacity, int schoolId, int roomNumber, int? classId
});




}
/// @nodoc
class __$RoomCopyWithImpl<$Res>
    implements _$RoomCopyWith<$Res> {
  __$RoomCopyWithImpl(this._self, this._then);

  final _Room _self;
  final $Res Function(_Room) _then;

/// Create a copy of Room
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? roomName = null,Object? createdAt = null,Object? capacity = null,Object? schoolId = null,Object? roomNumber = null,Object? classId = freezed,}) {
  return _then(_Room(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,roomName: null == roomName ? _self.roomName : roomName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int,roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as int,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
