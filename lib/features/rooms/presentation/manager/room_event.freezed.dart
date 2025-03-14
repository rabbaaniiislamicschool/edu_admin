// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoomEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RoomEvent()';
}


}

/// @nodoc
class $RoomEventCopyWith<$Res>  {
$RoomEventCopyWith(RoomEvent _, $Res Function(RoomEvent) __);
}


/// @nodoc


class FetchRooms implements RoomEvent {
  const FetchRooms();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchRooms);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RoomEvent.fetchRooms()';
}


}




/// @nodoc


class GetRoomById implements RoomEvent {
  const GetRoomById(this.id);
  

 final  int id;

/// Create a copy of RoomEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetRoomByIdCopyWith<GetRoomById> get copyWith => _$GetRoomByIdCopyWithImpl<GetRoomById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetRoomById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'RoomEvent.getRoomById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetRoomByIdCopyWith<$Res> implements $RoomEventCopyWith<$Res> {
  factory $GetRoomByIdCopyWith(GetRoomById value, $Res Function(GetRoomById) _then) = _$GetRoomByIdCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$GetRoomByIdCopyWithImpl<$Res>
    implements $GetRoomByIdCopyWith<$Res> {
  _$GetRoomByIdCopyWithImpl(this._self, this._then);

  final GetRoomById _self;
  final $Res Function(GetRoomById) _then;

/// Create a copy of RoomEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetRoomById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CreateRoom implements RoomEvent {
  const CreateRoom(this.room);
  

 final  Room room;

/// Create a copy of RoomEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateRoomCopyWith<CreateRoom> get copyWith => _$CreateRoomCopyWithImpl<CreateRoom>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateRoom&&(identical(other.room, room) || other.room == room));
}


@override
int get hashCode => Object.hash(runtimeType,room);

@override
String toString() {
  return 'RoomEvent.createRoom(room: $room)';
}


}

/// @nodoc
abstract mixin class $CreateRoomCopyWith<$Res> implements $RoomEventCopyWith<$Res> {
  factory $CreateRoomCopyWith(CreateRoom value, $Res Function(CreateRoom) _then) = _$CreateRoomCopyWithImpl;
@useResult
$Res call({
 Room room
});


$RoomCopyWith<$Res> get room;

}
/// @nodoc
class _$CreateRoomCopyWithImpl<$Res>
    implements $CreateRoomCopyWith<$Res> {
  _$CreateRoomCopyWithImpl(this._self, this._then);

  final CreateRoom _self;
  final $Res Function(CreateRoom) _then;

/// Create a copy of RoomEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? room = null,}) {
  return _then(CreateRoom(
null == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as Room,
  ));
}

/// Create a copy of RoomEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomCopyWith<$Res> get room {
  
  return $RoomCopyWith<$Res>(_self.room, (value) {
    return _then(_self.copyWith(room: value));
  });
}
}

/// @nodoc


class DeleteRoom implements RoomEvent {
  const DeleteRoom(this.id);
  

 final  int id;

/// Create a copy of RoomEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteRoomCopyWith<DeleteRoom> get copyWith => _$DeleteRoomCopyWithImpl<DeleteRoom>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteRoom&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'RoomEvent.deleteRoom(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteRoomCopyWith<$Res> implements $RoomEventCopyWith<$Res> {
  factory $DeleteRoomCopyWith(DeleteRoom value, $Res Function(DeleteRoom) _then) = _$DeleteRoomCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$DeleteRoomCopyWithImpl<$Res>
    implements $DeleteRoomCopyWith<$Res> {
  _$DeleteRoomCopyWithImpl(this._self, this._then);

  final DeleteRoom _self;
  final $Res Function(DeleteRoom) _then;

/// Create a copy of RoomEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteRoom(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateRoom implements RoomEvent {
  const UpdateRoom(this.room);
  

 final  Room room;

/// Create a copy of RoomEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateRoomCopyWith<UpdateRoom> get copyWith => _$UpdateRoomCopyWithImpl<UpdateRoom>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateRoom&&(identical(other.room, room) || other.room == room));
}


@override
int get hashCode => Object.hash(runtimeType,room);

@override
String toString() {
  return 'RoomEvent.updateRoom(room: $room)';
}


}

/// @nodoc
abstract mixin class $UpdateRoomCopyWith<$Res> implements $RoomEventCopyWith<$Res> {
  factory $UpdateRoomCopyWith(UpdateRoom value, $Res Function(UpdateRoom) _then) = _$UpdateRoomCopyWithImpl;
@useResult
$Res call({
 Room room
});


$RoomCopyWith<$Res> get room;

}
/// @nodoc
class _$UpdateRoomCopyWithImpl<$Res>
    implements $UpdateRoomCopyWith<$Res> {
  _$UpdateRoomCopyWithImpl(this._self, this._then);

  final UpdateRoom _self;
  final $Res Function(UpdateRoom) _then;

/// Create a copy of RoomEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? room = null,}) {
  return _then(UpdateRoom(
null == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as Room,
  ));
}

/// Create a copy of RoomEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomCopyWith<$Res> get room {
  
  return $RoomCopyWith<$Res>(_self.room, (value) {
    return _then(_self.copyWith(room: value));
  });
}
}

// dart format on
