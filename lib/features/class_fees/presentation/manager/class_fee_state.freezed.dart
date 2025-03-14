// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_fee_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClassFeeState {

 ClassFeeStatus get status; String? get errorMessage; String? get successMessage; List<ClassFee>? get classFees; ClassFee? get classFee;
/// Create a copy of ClassFeeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassFeeStateCopyWith<ClassFeeState> get copyWith => _$ClassFeeStateCopyWithImpl<ClassFeeState>(this as ClassFeeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassFeeState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other.classFees, classFees)&&(identical(other.classFee, classFee) || other.classFee == classFee));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(classFees),classFee);

@override
String toString() {
  return 'ClassFeeState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, classFees: $classFees, classFee: $classFee)';
}


}

/// @nodoc
abstract mixin class $ClassFeeStateCopyWith<$Res>  {
  factory $ClassFeeStateCopyWith(ClassFeeState value, $Res Function(ClassFeeState) _then) = _$ClassFeeStateCopyWithImpl;
@useResult
$Res call({
 ClassFeeStatus status, String? errorMessage, String? successMessage, List<ClassFee>? classFees, ClassFee? classFee
});


$ClassFeeCopyWith<$Res>? get classFee;

}
/// @nodoc
class _$ClassFeeStateCopyWithImpl<$Res>
    implements $ClassFeeStateCopyWith<$Res> {
  _$ClassFeeStateCopyWithImpl(this._self, this._then);

  final ClassFeeState _self;
  final $Res Function(ClassFeeState) _then;

/// Create a copy of ClassFeeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? classFees = freezed,Object? classFee = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClassFeeStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,classFees: freezed == classFees ? _self.classFees : classFees // ignore: cast_nullable_to_non_nullable
as List<ClassFee>?,classFee: freezed == classFee ? _self.classFee : classFee // ignore: cast_nullable_to_non_nullable
as ClassFee?,
  ));
}
/// Create a copy of ClassFeeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassFeeCopyWith<$Res>? get classFee {
    if (_self.classFee == null) {
    return null;
  }

  return $ClassFeeCopyWith<$Res>(_self.classFee!, (value) {
    return _then(_self.copyWith(classFee: value));
  });
}
}


/// @nodoc


class _ClassFeeState implements ClassFeeState {
  const _ClassFeeState({this.status = ClassFeeStatus.initial, this.errorMessage, this.successMessage, final  List<ClassFee>? classFees, this.classFee}): _classFees = classFees;
  

@override@JsonKey() final  ClassFeeStatus status;
@override final  String? errorMessage;
@override final  String? successMessage;
 final  List<ClassFee>? _classFees;
@override List<ClassFee>? get classFees {
  final value = _classFees;
  if (value == null) return null;
  if (_classFees is EqualUnmodifiableListView) return _classFees;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  ClassFee? classFee;

/// Create a copy of ClassFeeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassFeeStateCopyWith<_ClassFeeState> get copyWith => __$ClassFeeStateCopyWithImpl<_ClassFeeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassFeeState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other._classFees, _classFees)&&(identical(other.classFee, classFee) || other.classFee == classFee));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(_classFees),classFee);

@override
String toString() {
  return 'ClassFeeState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, classFees: $classFees, classFee: $classFee)';
}


}

/// @nodoc
abstract mixin class _$ClassFeeStateCopyWith<$Res> implements $ClassFeeStateCopyWith<$Res> {
  factory _$ClassFeeStateCopyWith(_ClassFeeState value, $Res Function(_ClassFeeState) _then) = __$ClassFeeStateCopyWithImpl;
@override @useResult
$Res call({
 ClassFeeStatus status, String? errorMessage, String? successMessage, List<ClassFee>? classFees, ClassFee? classFee
});


@override $ClassFeeCopyWith<$Res>? get classFee;

}
/// @nodoc
class __$ClassFeeStateCopyWithImpl<$Res>
    implements _$ClassFeeStateCopyWith<$Res> {
  __$ClassFeeStateCopyWithImpl(this._self, this._then);

  final _ClassFeeState _self;
  final $Res Function(_ClassFeeState) _then;

/// Create a copy of ClassFeeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? classFees = freezed,Object? classFee = freezed,}) {
  return _then(_ClassFeeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClassFeeStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,classFees: freezed == classFees ? _self._classFees : classFees // ignore: cast_nullable_to_non_nullable
as List<ClassFee>?,classFee: freezed == classFee ? _self.classFee : classFee // ignore: cast_nullable_to_non_nullable
as ClassFee?,
  ));
}

/// Create a copy of ClassFeeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassFeeCopyWith<$Res>? get classFee {
    if (_self.classFee == null) {
    return null;
  }

  return $ClassFeeCopyWith<$Res>(_self.classFee!, (value) {
    return _then(_self.copyWith(classFee: value));
  });
}
}

// dart format on
