// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fee_type_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeeTypeState {

 FeeTypeStatus get status; String? get errorMessage; String? get successMessage; List<FeeType>? get feeTypes; FeeType? get feeType;
/// Create a copy of FeeTypeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeTypeStateCopyWith<FeeTypeState> get copyWith => _$FeeTypeStateCopyWithImpl<FeeTypeState>(this as FeeTypeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeTypeState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other.feeTypes, feeTypes)&&(identical(other.feeType, feeType) || other.feeType == feeType));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(feeTypes),feeType);

@override
String toString() {
  return 'FeeTypeState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, feeTypes: $feeTypes, feeType: $feeType)';
}


}

/// @nodoc
abstract mixin class $FeeTypeStateCopyWith<$Res>  {
  factory $FeeTypeStateCopyWith(FeeTypeState value, $Res Function(FeeTypeState) _then) = _$FeeTypeStateCopyWithImpl;
@useResult
$Res call({
 FeeTypeStatus status, String? errorMessage, String? successMessage, List<FeeType>? feeTypes, FeeType? feeType
});


$FeeTypeCopyWith<$Res>? get feeType;

}
/// @nodoc
class _$FeeTypeStateCopyWithImpl<$Res>
    implements $FeeTypeStateCopyWith<$Res> {
  _$FeeTypeStateCopyWithImpl(this._self, this._then);

  final FeeTypeState _self;
  final $Res Function(FeeTypeState) _then;

/// Create a copy of FeeTypeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? feeTypes = freezed,Object? feeType = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FeeTypeStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,feeTypes: freezed == feeTypes ? _self.feeTypes : feeTypes // ignore: cast_nullable_to_non_nullable
as List<FeeType>?,feeType: freezed == feeType ? _self.feeType : feeType // ignore: cast_nullable_to_non_nullable
as FeeType?,
  ));
}
/// Create a copy of FeeTypeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeeTypeCopyWith<$Res>? get feeType {
    if (_self.feeType == null) {
    return null;
  }

  return $FeeTypeCopyWith<$Res>(_self.feeType!, (value) {
    return _then(_self.copyWith(feeType: value));
  });
}
}


/// @nodoc


class _FeeTypeState implements FeeTypeState {
  const _FeeTypeState({this.status = FeeTypeStatus.initial, this.errorMessage, this.successMessage, final  List<FeeType>? feeTypes, this.feeType}): _feeTypes = feeTypes;
  

@override@JsonKey() final  FeeTypeStatus status;
@override final  String? errorMessage;
@override final  String? successMessage;
 final  List<FeeType>? _feeTypes;
@override List<FeeType>? get feeTypes {
  final value = _feeTypes;
  if (value == null) return null;
  if (_feeTypes is EqualUnmodifiableListView) return _feeTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  FeeType? feeType;

/// Create a copy of FeeTypeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeTypeStateCopyWith<_FeeTypeState> get copyWith => __$FeeTypeStateCopyWithImpl<_FeeTypeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeTypeState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other._feeTypes, _feeTypes)&&(identical(other.feeType, feeType) || other.feeType == feeType));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(_feeTypes),feeType);

@override
String toString() {
  return 'FeeTypeState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, feeTypes: $feeTypes, feeType: $feeType)';
}


}

/// @nodoc
abstract mixin class _$FeeTypeStateCopyWith<$Res> implements $FeeTypeStateCopyWith<$Res> {
  factory _$FeeTypeStateCopyWith(_FeeTypeState value, $Res Function(_FeeTypeState) _then) = __$FeeTypeStateCopyWithImpl;
@override @useResult
$Res call({
 FeeTypeStatus status, String? errorMessage, String? successMessage, List<FeeType>? feeTypes, FeeType? feeType
});


@override $FeeTypeCopyWith<$Res>? get feeType;

}
/// @nodoc
class __$FeeTypeStateCopyWithImpl<$Res>
    implements _$FeeTypeStateCopyWith<$Res> {
  __$FeeTypeStateCopyWithImpl(this._self, this._then);

  final _FeeTypeState _self;
  final $Res Function(_FeeTypeState) _then;

/// Create a copy of FeeTypeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? feeTypes = freezed,Object? feeType = freezed,}) {
  return _then(_FeeTypeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FeeTypeStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,feeTypes: freezed == feeTypes ? _self._feeTypes : feeTypes // ignore: cast_nullable_to_non_nullable
as List<FeeType>?,feeType: freezed == feeType ? _self.feeType : feeType // ignore: cast_nullable_to_non_nullable
as FeeType?,
  ));
}

/// Create a copy of FeeTypeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeeTypeCopyWith<$Res>? get feeType {
    if (_self.feeType == null) {
    return null;
  }

  return $FeeTypeCopyWith<$Res>(_self.feeType!, (value) {
    return _then(_self.copyWith(feeType: value));
  });
}
}

// dart format on
