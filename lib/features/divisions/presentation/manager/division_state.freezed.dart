// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DivisionState {

 DivisionStatus get status; String? get errorMessage; String? get successMessage; List<Division>? get divisions; Division? get division;
/// Create a copy of DivisionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DivisionStateCopyWith<DivisionState> get copyWith => _$DivisionStateCopyWithImpl<DivisionState>(this as DivisionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DivisionState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other.divisions, divisions)&&(identical(other.division, division) || other.division == division));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(divisions),division);

@override
String toString() {
  return 'DivisionState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, divisions: $divisions, division: $division)';
}


}

/// @nodoc
abstract mixin class $DivisionStateCopyWith<$Res>  {
  factory $DivisionStateCopyWith(DivisionState value, $Res Function(DivisionState) _then) = _$DivisionStateCopyWithImpl;
@useResult
$Res call({
 DivisionStatus status, String? errorMessage, String? successMessage, List<Division>? divisions, Division? division
});


$DivisionCopyWith<$Res>? get division;

}
/// @nodoc
class _$DivisionStateCopyWithImpl<$Res>
    implements $DivisionStateCopyWith<$Res> {
  _$DivisionStateCopyWithImpl(this._self, this._then);

  final DivisionState _self;
  final $Res Function(DivisionState) _then;

/// Create a copy of DivisionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? divisions = freezed,Object? division = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DivisionStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,divisions: freezed == divisions ? _self.divisions : divisions // ignore: cast_nullable_to_non_nullable
as List<Division>?,division: freezed == division ? _self.division : division // ignore: cast_nullable_to_non_nullable
as Division?,
  ));
}
/// Create a copy of DivisionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DivisionCopyWith<$Res>? get division {
    if (_self.division == null) {
    return null;
  }

  return $DivisionCopyWith<$Res>(_self.division!, (value) {
    return _then(_self.copyWith(division: value));
  });
}
}


/// @nodoc


class _DivisionState implements DivisionState {
  const _DivisionState({this.status = DivisionStatus.initial, this.errorMessage, this.successMessage, final  List<Division>? divisions, this.division}): _divisions = divisions;
  

@override@JsonKey() final  DivisionStatus status;
@override final  String? errorMessage;
@override final  String? successMessage;
 final  List<Division>? _divisions;
@override List<Division>? get divisions {
  final value = _divisions;
  if (value == null) return null;
  if (_divisions is EqualUnmodifiableListView) return _divisions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Division? division;

/// Create a copy of DivisionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DivisionStateCopyWith<_DivisionState> get copyWith => __$DivisionStateCopyWithImpl<_DivisionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DivisionState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other._divisions, _divisions)&&(identical(other.division, division) || other.division == division));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(_divisions),division);

@override
String toString() {
  return 'DivisionState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, divisions: $divisions, division: $division)';
}


}

/// @nodoc
abstract mixin class _$DivisionStateCopyWith<$Res> implements $DivisionStateCopyWith<$Res> {
  factory _$DivisionStateCopyWith(_DivisionState value, $Res Function(_DivisionState) _then) = __$DivisionStateCopyWithImpl;
@override @useResult
$Res call({
 DivisionStatus status, String? errorMessage, String? successMessage, List<Division>? divisions, Division? division
});


@override $DivisionCopyWith<$Res>? get division;

}
/// @nodoc
class __$DivisionStateCopyWithImpl<$Res>
    implements _$DivisionStateCopyWith<$Res> {
  __$DivisionStateCopyWithImpl(this._self, this._then);

  final _DivisionState _self;
  final $Res Function(_DivisionState) _then;

/// Create a copy of DivisionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? divisions = freezed,Object? division = freezed,}) {
  return _then(_DivisionState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DivisionStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,divisions: freezed == divisions ? _self._divisions : divisions // ignore: cast_nullable_to_non_nullable
as List<Division>?,division: freezed == division ? _self.division : division // ignore: cast_nullable_to_non_nullable
as Division?,
  ));
}

/// Create a copy of DivisionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DivisionCopyWith<$Res>? get division {
    if (_self.division == null) {
    return null;
  }

  return $DivisionCopyWith<$Res>(_self.division!, (value) {
    return _then(_self.copyWith(division: value));
  });
}
}

// dart format on
