// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Class {

 int get classId; int get schoolId; String get className; String? get description; String get createdAt; int? get roomId;
/// Create a copy of Class
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassCopyWith<Class> get copyWith => _$ClassCopyWithImpl<Class>(this as Class, _$identity);

  /// Serializes this Class to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Class&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.className, className) || other.className == className)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.roomId, roomId) || other.roomId == roomId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,classId,schoolId,className,description,createdAt,roomId);

@override
String toString() {
  return 'Class(classId: $classId, schoolId: $schoolId, className: $className, description: $description, createdAt: $createdAt, roomId: $roomId)';
}


}

/// @nodoc
abstract mixin class $ClassCopyWith<$Res>  {
  factory $ClassCopyWith(Class value, $Res Function(Class) _then) = _$ClassCopyWithImpl;
@useResult
$Res call({
 int classId, int schoolId, String className, String? description, String createdAt, int? roomId
});




}
/// @nodoc
class _$ClassCopyWithImpl<$Res>
    implements $ClassCopyWith<$Res> {
  _$ClassCopyWithImpl(this._self, this._then);

  final Class _self;
  final $Res Function(Class) _then;

/// Create a copy of Class
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? classId = null,Object? schoolId = null,Object? className = null,Object? description = freezed,Object? createdAt = null,Object? roomId = freezed,}) {
  return _then(_self.copyWith(
classId: null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as int,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int,className: null == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,roomId: freezed == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Class implements Class {
   _Class({required this.classId, required this.schoolId, required this.className, this.description, required this.createdAt, this.roomId});
  factory _Class.fromJson(Map<String, dynamic> json) => _$ClassFromJson(json);

@override final  int classId;
@override final  int schoolId;
@override final  String className;
@override final  String? description;
@override final  String createdAt;
@override final  int? roomId;

/// Create a copy of Class
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassCopyWith<_Class> get copyWith => __$ClassCopyWithImpl<_Class>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Class&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.className, className) || other.className == className)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.roomId, roomId) || other.roomId == roomId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,classId,schoolId,className,description,createdAt,roomId);

@override
String toString() {
  return 'Class(classId: $classId, schoolId: $schoolId, className: $className, description: $description, createdAt: $createdAt, roomId: $roomId)';
}


}

/// @nodoc
abstract mixin class _$ClassCopyWith<$Res> implements $ClassCopyWith<$Res> {
  factory _$ClassCopyWith(_Class value, $Res Function(_Class) _then) = __$ClassCopyWithImpl;
@override @useResult
$Res call({
 int classId, int schoolId, String className, String? description, String createdAt, int? roomId
});




}
/// @nodoc
class __$ClassCopyWithImpl<$Res>
    implements _$ClassCopyWith<$Res> {
  __$ClassCopyWithImpl(this._self, this._then);

  final _Class _self;
  final $Res Function(_Class) _then;

/// Create a copy of Class
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? classId = null,Object? schoolId = null,Object? className = null,Object? description = freezed,Object? createdAt = null,Object? roomId = freezed,}) {
  return _then(_Class(
classId: null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as int,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int,className: null == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,roomId: freezed == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
