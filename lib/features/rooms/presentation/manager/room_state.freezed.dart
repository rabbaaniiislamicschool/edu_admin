// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoomState {

 RoomStatus get status; String? get errorMessage; String? get successMessage; List<Room>? get rooms; Room? get room;
/// Create a copy of RoomState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomStateCopyWith<RoomState> get copyWith => _$RoomStateCopyWithImpl<RoomState>(this as RoomState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other.rooms, rooms)&&(identical(other.room, room) || other.room == room));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(rooms),room);

@override
String toString() {
  return 'RoomState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, rooms: $rooms, room: $room)';
}


}

/// @nodoc
abstract mixin class $RoomStateCopyWith<$Res>  {
  factory $RoomStateCopyWith(RoomState value, $Res Function(RoomState) _then) = _$RoomStateCopyWithImpl;
@useResult
$Res call({
 RoomStatus status, String? errorMessage, String? successMessage, List<Room>? rooms, Room? room
});


$RoomCopyWith<$Res>? get room;

}
/// @nodoc
class _$RoomStateCopyWithImpl<$Res>
    implements $RoomStateCopyWith<$Res> {
  _$RoomStateCopyWithImpl(this._self, this._then);

  final RoomState _self;
  final $Res Function(RoomState) _then;

/// Create a copy of RoomState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? rooms = freezed,Object? room = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RoomStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,rooms: freezed == rooms ? _self.rooms : rooms // ignore: cast_nullable_to_non_nullable
as List<Room>?,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as Room?,
  ));
}
/// Create a copy of RoomState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomCopyWith<$Res>? get room {
    if (_self.room == null) {
    return null;
  }

  return $RoomCopyWith<$Res>(_self.room!, (value) {
    return _then(_self.copyWith(room: value));
  });
}
}


/// @nodoc


class _RoomState implements RoomState {
  const _RoomState({this.status = RoomStatus.initial, this.errorMessage, this.successMessage, final  List<Room>? rooms, this.room}): _rooms = rooms;
  

@override@JsonKey() final  RoomStatus status;
@override final  String? errorMessage;
@override final  String? successMessage;
 final  List<Room>? _rooms;
@override List<Room>? get rooms {
  final value = _rooms;
  if (value == null) return null;
  if (_rooms is EqualUnmodifiableListView) return _rooms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Room? room;

/// Create a copy of RoomState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomStateCopyWith<_RoomState> get copyWith => __$RoomStateCopyWithImpl<_RoomState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other._rooms, _rooms)&&(identical(other.room, room) || other.room == room));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(_rooms),room);

@override
String toString() {
  return 'RoomState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, rooms: $rooms, room: $room)';
}


}

/// @nodoc
abstract mixin class _$RoomStateCopyWith<$Res> implements $RoomStateCopyWith<$Res> {
  factory _$RoomStateCopyWith(_RoomState value, $Res Function(_RoomState) _then) = __$RoomStateCopyWithImpl;
@override @useResult
$Res call({
 RoomStatus status, String? errorMessage, String? successMessage, List<Room>? rooms, Room? room
});


@override $RoomCopyWith<$Res>? get room;

}
/// @nodoc
class __$RoomStateCopyWithImpl<$Res>
    implements _$RoomStateCopyWith<$Res> {
  __$RoomStateCopyWithImpl(this._self, this._then);

  final _RoomState _self;
  final $Res Function(_RoomState) _then;

/// Create a copy of RoomState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? rooms = freezed,Object? room = freezed,}) {
  return _then(_RoomState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RoomStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,rooms: freezed == rooms ? _self._rooms : rooms // ignore: cast_nullable_to_non_nullable
as List<Room>?,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as Room?,
  ));
}

/// Create a copy of RoomState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomCopyWith<$Res>? get room {
    if (_self.room == null) {
    return null;
  }

  return $RoomCopyWith<$Res>(_self.room!, (value) {
    return _then(_self.copyWith(room: value));
  });
}
}

// dart format on
