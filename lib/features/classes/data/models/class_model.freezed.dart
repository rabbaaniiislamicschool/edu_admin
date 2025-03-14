// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'class_id', includeToJson: false) int get classId;@JsonKey(name: 'school_id') int get schoolId;@JsonKey(name: 'class_name') String get className; String? get description;@JsonKey(name: 'created_at', includeToJson: false) String get createdAt;@JsonKey(name: 'room_id') int? get roomId;
/// Create a copy of ClassModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassModelCopyWith<ClassModel> get copyWith => _$ClassModelCopyWithImpl<ClassModel>(this as ClassModel, _$identity);

  /// Serializes this ClassModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ClassModel'))
    ..add(DiagnosticsProperty('classId', classId))..add(DiagnosticsProperty('schoolId', schoolId))..add(DiagnosticsProperty('className', className))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('roomId', roomId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassModel&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.className, className) || other.className == className)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.roomId, roomId) || other.roomId == roomId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,classId,schoolId,className,description,createdAt,roomId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ClassModel(classId: $classId, schoolId: $schoolId, className: $className, description: $description, createdAt: $createdAt, roomId: $roomId)';
}


}

/// @nodoc
abstract mixin class $ClassModelCopyWith<$Res>  {
  factory $ClassModelCopyWith(ClassModel value, $Res Function(ClassModel) _then) = _$ClassModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'class_id', includeToJson: false) int classId,@JsonKey(name: 'school_id') int schoolId,@JsonKey(name: 'class_name') String className, String? description,@JsonKey(name: 'created_at', includeToJson: false) String createdAt,@JsonKey(name: 'room_id') int? roomId
});




}
/// @nodoc
class _$ClassModelCopyWithImpl<$Res>
    implements $ClassModelCopyWith<$Res> {
  _$ClassModelCopyWithImpl(this._self, this._then);

  final ClassModel _self;
  final $Res Function(ClassModel) _then;

/// Create a copy of ClassModel
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

class _ClassModel with DiagnosticableTreeMixin implements ClassModel {
  const _ClassModel({@JsonKey(name: 'class_id', includeToJson: false) required this.classId, @JsonKey(name: 'school_id') required this.schoolId, @JsonKey(name: 'class_name') required this.className, this.description, @JsonKey(name: 'created_at', includeToJson: false) required this.createdAt, @JsonKey(name: 'room_id') this.roomId});
  factory _ClassModel.fromJson(Map<String, dynamic> json) => _$ClassModelFromJson(json);

@override@JsonKey(name: 'class_id', includeToJson: false) final  int classId;
@override@JsonKey(name: 'school_id') final  int schoolId;
@override@JsonKey(name: 'class_name') final  String className;
@override final  String? description;
@override@JsonKey(name: 'created_at', includeToJson: false) final  String createdAt;
@override@JsonKey(name: 'room_id') final  int? roomId;

/// Create a copy of ClassModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassModelCopyWith<_ClassModel> get copyWith => __$ClassModelCopyWithImpl<_ClassModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ClassModel'))
    ..add(DiagnosticsProperty('classId', classId))..add(DiagnosticsProperty('schoolId', schoolId))..add(DiagnosticsProperty('className', className))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('roomId', roomId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassModel&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.className, className) || other.className == className)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.roomId, roomId) || other.roomId == roomId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,classId,schoolId,className,description,createdAt,roomId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ClassModel(classId: $classId, schoolId: $schoolId, className: $className, description: $description, createdAt: $createdAt, roomId: $roomId)';
}


}

/// @nodoc
abstract mixin class _$ClassModelCopyWith<$Res> implements $ClassModelCopyWith<$Res> {
  factory _$ClassModelCopyWith(_ClassModel value, $Res Function(_ClassModel) _then) = __$ClassModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'class_id', includeToJson: false) int classId,@JsonKey(name: 'school_id') int schoolId,@JsonKey(name: 'class_name') String className, String? description,@JsonKey(name: 'created_at', includeToJson: false) String createdAt,@JsonKey(name: 'room_id') int? roomId
});




}
/// @nodoc
class __$ClassModelCopyWithImpl<$Res>
    implements _$ClassModelCopyWith<$Res> {
  __$ClassModelCopyWithImpl(this._self, this._then);

  final _ClassModel _self;
  final $Res Function(_ClassModel) _then;

/// Create a copy of ClassModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? classId = null,Object? schoolId = null,Object? className = null,Object? description = freezed,Object? createdAt = null,Object? roomId = freezed,}) {
  return _then(_ClassModel(
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
