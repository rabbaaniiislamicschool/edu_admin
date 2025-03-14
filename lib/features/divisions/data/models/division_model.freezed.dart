// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DivisionModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'division_id', includeToJson: false) int get divisionId;@JsonKey(name: 'division_name') String get divisionName;@JsonKey(name: 'created_at', includeToJson: false) String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;
/// Create a copy of DivisionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DivisionModelCopyWith<DivisionModel> get copyWith => _$DivisionModelCopyWithImpl<DivisionModel>(this as DivisionModel, _$identity);

  /// Serializes this DivisionModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DivisionModel'))
    ..add(DiagnosticsProperty('divisionId', divisionId))..add(DiagnosticsProperty('divisionName', divisionName))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DivisionModel&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,divisionId,divisionName,createdAt,updatedAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DivisionModel(divisionId: $divisionId, divisionName: $divisionName, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DivisionModelCopyWith<$Res>  {
  factory $DivisionModelCopyWith(DivisionModel value, $Res Function(DivisionModel) _then) = _$DivisionModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'division_id', includeToJson: false) int divisionId,@JsonKey(name: 'division_name') String divisionName,@JsonKey(name: 'created_at', includeToJson: false) String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class _$DivisionModelCopyWithImpl<$Res>
    implements $DivisionModelCopyWith<$Res> {
  _$DivisionModelCopyWithImpl(this._self, this._then);

  final DivisionModel _self;
  final $Res Function(DivisionModel) _then;

/// Create a copy of DivisionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? divisionId = null,Object? divisionName = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
divisionId: null == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as int,divisionName: null == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DivisionModel with DiagnosticableTreeMixin implements DivisionModel {
  const _DivisionModel({@JsonKey(name: 'division_id', includeToJson: false) required this.divisionId, @JsonKey(name: 'division_name') required this.divisionName, @JsonKey(name: 'created_at', includeToJson: false) required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _DivisionModel.fromJson(Map<String, dynamic> json) => _$DivisionModelFromJson(json);

@override@JsonKey(name: 'division_id', includeToJson: false) final  int divisionId;
@override@JsonKey(name: 'division_name') final  String divisionName;
@override@JsonKey(name: 'created_at', includeToJson: false) final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;

/// Create a copy of DivisionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DivisionModelCopyWith<_DivisionModel> get copyWith => __$DivisionModelCopyWithImpl<_DivisionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DivisionModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DivisionModel'))
    ..add(DiagnosticsProperty('divisionId', divisionId))..add(DiagnosticsProperty('divisionName', divisionName))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DivisionModel&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,divisionId,divisionName,createdAt,updatedAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DivisionModel(divisionId: $divisionId, divisionName: $divisionName, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DivisionModelCopyWith<$Res> implements $DivisionModelCopyWith<$Res> {
  factory _$DivisionModelCopyWith(_DivisionModel value, $Res Function(_DivisionModel) _then) = __$DivisionModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'division_id', includeToJson: false) int divisionId,@JsonKey(name: 'division_name') String divisionName,@JsonKey(name: 'created_at', includeToJson: false) String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class __$DivisionModelCopyWithImpl<$Res>
    implements _$DivisionModelCopyWith<$Res> {
  __$DivisionModelCopyWithImpl(this._self, this._then);

  final _DivisionModel _self;
  final $Res Function(_DivisionModel) _then;

/// Create a copy of DivisionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? divisionId = null,Object? divisionName = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_DivisionModel(
divisionId: null == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as int,divisionName: null == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
