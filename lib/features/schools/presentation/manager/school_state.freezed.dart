// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SchoolState {

 SchoolStatus get status; String? get errorMessage; String? get successMessage; List<School>? get schools; School? get school;
/// Create a copy of SchoolState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchoolStateCopyWith<SchoolState> get copyWith => _$SchoolStateCopyWithImpl<SchoolState>(this as SchoolState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SchoolState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other.schools, schools)&&(identical(other.school, school) || other.school == school));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(schools),school);

@override
String toString() {
  return 'SchoolState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, schools: $schools, school: $school)';
}


}

/// @nodoc
abstract mixin class $SchoolStateCopyWith<$Res>  {
  factory $SchoolStateCopyWith(SchoolState value, $Res Function(SchoolState) _then) = _$SchoolStateCopyWithImpl;
@useResult
$Res call({
 SchoolStatus status, String? errorMessage, String? successMessage, List<School>? schools, School? school
});


$SchoolCopyWith<$Res>? get school;

}
/// @nodoc
class _$SchoolStateCopyWithImpl<$Res>
    implements $SchoolStateCopyWith<$Res> {
  _$SchoolStateCopyWithImpl(this._self, this._then);

  final SchoolState _self;
  final $Res Function(SchoolState) _then;

/// Create a copy of SchoolState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? schools = freezed,Object? school = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SchoolStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,schools: freezed == schools ? _self.schools : schools // ignore: cast_nullable_to_non_nullable
as List<School>?,school: freezed == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as School?,
  ));
}
/// Create a copy of SchoolState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchoolCopyWith<$Res>? get school {
    if (_self.school == null) {
    return null;
  }

  return $SchoolCopyWith<$Res>(_self.school!, (value) {
    return _then(_self.copyWith(school: value));
  });
}
}


/// @nodoc


class _SchoolState implements SchoolState {
  const _SchoolState({this.status = SchoolStatus.initial, this.errorMessage, this.successMessage, final  List<School>? schools, this.school}): _schools = schools;
  

@override@JsonKey() final  SchoolStatus status;
@override final  String? errorMessage;
@override final  String? successMessage;
 final  List<School>? _schools;
@override List<School>? get schools {
  final value = _schools;
  if (value == null) return null;
  if (_schools is EqualUnmodifiableListView) return _schools;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  School? school;

/// Create a copy of SchoolState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchoolStateCopyWith<_SchoolState> get copyWith => __$SchoolStateCopyWithImpl<_SchoolState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SchoolState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other._schools, _schools)&&(identical(other.school, school) || other.school == school));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(_schools),school);

@override
String toString() {
  return 'SchoolState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, schools: $schools, school: $school)';
}


}

/// @nodoc
abstract mixin class _$SchoolStateCopyWith<$Res> implements $SchoolStateCopyWith<$Res> {
  factory _$SchoolStateCopyWith(_SchoolState value, $Res Function(_SchoolState) _then) = __$SchoolStateCopyWithImpl;
@override @useResult
$Res call({
 SchoolStatus status, String? errorMessage, String? successMessage, List<School>? schools, School? school
});


@override $SchoolCopyWith<$Res>? get school;

}
/// @nodoc
class __$SchoolStateCopyWithImpl<$Res>
    implements _$SchoolStateCopyWith<$Res> {
  __$SchoolStateCopyWithImpl(this._self, this._then);

  final _SchoolState _self;
  final $Res Function(_SchoolState) _then;

/// Create a copy of SchoolState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? schools = freezed,Object? school = freezed,}) {
  return _then(_SchoolState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SchoolStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,schools: freezed == schools ? _self._schools : schools // ignore: cast_nullable_to_non_nullable
as List<School>?,school: freezed == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as School?,
  ));
}

/// Create a copy of SchoolState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchoolCopyWith<$Res>? get school {
    if (_self.school == null) {
    return null;
  }

  return $SchoolCopyWith<$Res>(_self.school!, (value) {
    return _then(_self.copyWith(school: value));
  });
}
}

// dart format on
