// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoomModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'room_id', includeToJson: false) int get roomId;@JsonKey(name: 'room_name') String get roomName;@JsonKey(name: 'created_at', includeToJson: false) String get createdAt;@JsonKey(name: 'capacity') int get capacity;@JsonKey(name: 'school_id') int get schoolId;@JsonKey(name: 'room_number') int get roomNumber;@JsonKey(name: 'class_id') int? get classId;
/// Create a copy of RoomModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomModelCopyWith<RoomModel> get copyWith => _$RoomModelCopyWithImpl<RoomModel>(this as RoomModel, _$identity);

  /// Serializes this RoomModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomModel'))
    ..add(DiagnosticsProperty('roomId', roomId))..add(DiagnosticsProperty('roomName', roomName))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('capacity', capacity))..add(DiagnosticsProperty('schoolId', schoolId))..add(DiagnosticsProperty('roomNumber', roomNumber))..add(DiagnosticsProperty('classId', classId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomModel&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.roomName, roomName) || other.roomName == roomName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.classId, classId) || other.classId == classId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roomId,roomName,createdAt,capacity,schoolId,roomNumber,classId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomModel(roomId: $roomId, roomName: $roomName, createdAt: $createdAt, capacity: $capacity, schoolId: $schoolId, roomNumber: $roomNumber, classId: $classId)';
}


}

/// @nodoc
abstract mixin class $RoomModelCopyWith<$Res>  {
  factory $RoomModelCopyWith(RoomModel value, $Res Function(RoomModel) _then) = _$RoomModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'room_id', includeToJson: false) int roomId,@JsonKey(name: 'room_name') String roomName,@JsonKey(name: 'created_at', includeToJson: false) String createdAt,@JsonKey(name: 'capacity') int capacity,@JsonKey(name: 'school_id') int schoolId,@JsonKey(name: 'room_number') int roomNumber,@JsonKey(name: 'class_id') int? classId
});




}
/// @nodoc
class _$RoomModelCopyWithImpl<$Res>
    implements $RoomModelCopyWith<$Res> {
  _$RoomModelCopyWithImpl(this._self, this._then);

  final RoomModel _self;
  final $Res Function(RoomModel) _then;

/// Create a copy of RoomModel
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

class _RoomModel with DiagnosticableTreeMixin implements RoomModel {
  const _RoomModel({@JsonKey(name: 'room_id', includeToJson: false) required this.roomId, @JsonKey(name: 'room_name') required this.roomName, @JsonKey(name: 'created_at', includeToJson: false) required this.createdAt, @JsonKey(name: 'capacity') required this.capacity, @JsonKey(name: 'school_id') required this.schoolId, @JsonKey(name: 'room_number') required this.roomNumber, @JsonKey(name: 'class_id') this.classId});
  factory _RoomModel.fromJson(Map<String, dynamic> json) => _$RoomModelFromJson(json);

@override@JsonKey(name: 'room_id', includeToJson: false) final  int roomId;
@override@JsonKey(name: 'room_name') final  String roomName;
@override@JsonKey(name: 'created_at', includeToJson: false) final  String createdAt;
@override@JsonKey(name: 'capacity') final  int capacity;
@override@JsonKey(name: 'school_id') final  int schoolId;
@override@JsonKey(name: 'room_number') final  int roomNumber;
@override@JsonKey(name: 'class_id') final  int? classId;

/// Create a copy of RoomModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomModelCopyWith<_RoomModel> get copyWith => __$RoomModelCopyWithImpl<_RoomModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoomModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomModel'))
    ..add(DiagnosticsProperty('roomId', roomId))..add(DiagnosticsProperty('roomName', roomName))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('capacity', capacity))..add(DiagnosticsProperty('schoolId', schoolId))..add(DiagnosticsProperty('roomNumber', roomNumber))..add(DiagnosticsProperty('classId', classId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomModel&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.roomName, roomName) || other.roomName == roomName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.classId, classId) || other.classId == classId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roomId,roomName,createdAt,capacity,schoolId,roomNumber,classId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomModel(roomId: $roomId, roomName: $roomName, createdAt: $createdAt, capacity: $capacity, schoolId: $schoolId, roomNumber: $roomNumber, classId: $classId)';
}


}

/// @nodoc
abstract mixin class _$RoomModelCopyWith<$Res> implements $RoomModelCopyWith<$Res> {
  factory _$RoomModelCopyWith(_RoomModel value, $Res Function(_RoomModel) _then) = __$RoomModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'room_id', includeToJson: false) int roomId,@JsonKey(name: 'room_name') String roomName,@JsonKey(name: 'created_at', includeToJson: false) String createdAt,@JsonKey(name: 'capacity') int capacity,@JsonKey(name: 'school_id') int schoolId,@JsonKey(name: 'room_number') int roomNumber,@JsonKey(name: 'class_id') int? classId
});




}
/// @nodoc
class __$RoomModelCopyWithImpl<$Res>
    implements _$RoomModelCopyWith<$Res> {
  __$RoomModelCopyWithImpl(this._self, this._then);

  final _RoomModel _self;
  final $Res Function(_RoomModel) _then;

/// Create a copy of RoomModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? roomName = null,Object? createdAt = null,Object? capacity = null,Object? schoolId = null,Object? roomNumber = null,Object? classId = freezed,}) {
  return _then(_RoomModel(
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
