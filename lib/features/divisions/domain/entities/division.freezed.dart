// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Division {

 int get divisionId; String get divisionName; String get createdAt; String get updatedAt;
/// Create a copy of Division
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DivisionCopyWith<Division> get copyWith => _$DivisionCopyWithImpl<Division>(this as Division, _$identity);

  /// Serializes this Division to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Division&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,divisionId,divisionName,createdAt,updatedAt);

@override
String toString() {
  return 'Division(divisionId: $divisionId, divisionName: $divisionName, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DivisionCopyWith<$Res>  {
  factory $DivisionCopyWith(Division value, $Res Function(Division) _then) = _$DivisionCopyWithImpl;
@useResult
$Res call({
 int divisionId, String divisionName, String createdAt, String updatedAt
});




}
/// @nodoc
class _$DivisionCopyWithImpl<$Res>
    implements $DivisionCopyWith<$Res> {
  _$DivisionCopyWithImpl(this._self, this._then);

  final Division _self;
  final $Res Function(Division) _then;

/// Create a copy of Division
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

class _Division implements Division {
   _Division({required this.divisionId, required this.divisionName, required this.createdAt, required this.updatedAt});
  factory _Division.fromJson(Map<String, dynamic> json) => _$DivisionFromJson(json);

@override final  int divisionId;
@override final  String divisionName;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of Division
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DivisionCopyWith<_Division> get copyWith => __$DivisionCopyWithImpl<_Division>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DivisionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Division&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,divisionId,divisionName,createdAt,updatedAt);

@override
String toString() {
  return 'Division(divisionId: $divisionId, divisionName: $divisionName, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DivisionCopyWith<$Res> implements $DivisionCopyWith<$Res> {
  factory _$DivisionCopyWith(_Division value, $Res Function(_Division) _then) = __$DivisionCopyWithImpl;
@override @useResult
$Res call({
 int divisionId, String divisionName, String createdAt, String updatedAt
});




}
/// @nodoc
class __$DivisionCopyWithImpl<$Res>
    implements _$DivisionCopyWith<$Res> {
  __$DivisionCopyWithImpl(this._self, this._then);

  final _Division _self;
  final $Res Function(_Division) _then;

/// Create a copy of Division
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? divisionId = null,Object? divisionName = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Division(
divisionId: null == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as int,divisionName: null == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
