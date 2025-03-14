// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_fee_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StudentFeeState {

 StudentFeeStatus get status; String? get errorMessage; String? get successMessage; List<StudentFee>? get studentFees; StudentFee? get studentFee;
/// Create a copy of StudentFeeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentFeeStateCopyWith<StudentFeeState> get copyWith => _$StudentFeeStateCopyWithImpl<StudentFeeState>(this as StudentFeeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentFeeState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other.studentFees, studentFees)&&(identical(other.studentFee, studentFee) || other.studentFee == studentFee));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(studentFees),studentFee);

@override
String toString() {
  return 'StudentFeeState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, studentFees: $studentFees, studentFee: $studentFee)';
}


}

/// @nodoc
abstract mixin class $StudentFeeStateCopyWith<$Res>  {
  factory $StudentFeeStateCopyWith(StudentFeeState value, $Res Function(StudentFeeState) _then) = _$StudentFeeStateCopyWithImpl;
@useResult
$Res call({
 StudentFeeStatus status, String? errorMessage, String? successMessage, List<StudentFee>? studentFees, StudentFee? studentFee
});


$StudentFeeCopyWith<$Res>? get studentFee;

}
/// @nodoc
class _$StudentFeeStateCopyWithImpl<$Res>
    implements $StudentFeeStateCopyWith<$Res> {
  _$StudentFeeStateCopyWithImpl(this._self, this._then);

  final StudentFeeState _self;
  final $Res Function(StudentFeeState) _then;

/// Create a copy of StudentFeeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? studentFees = freezed,Object? studentFee = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StudentFeeStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,studentFees: freezed == studentFees ? _self.studentFees : studentFees // ignore: cast_nullable_to_non_nullable
as List<StudentFee>?,studentFee: freezed == studentFee ? _self.studentFee : studentFee // ignore: cast_nullable_to_non_nullable
as StudentFee?,
  ));
}
/// Create a copy of StudentFeeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentFeeCopyWith<$Res>? get studentFee {
    if (_self.studentFee == null) {
    return null;
  }

  return $StudentFeeCopyWith<$Res>(_self.studentFee!, (value) {
    return _then(_self.copyWith(studentFee: value));
  });
}
}


/// @nodoc


class _StudentFeeState implements StudentFeeState {
  const _StudentFeeState({this.status = StudentFeeStatus.initial, this.errorMessage, this.successMessage, final  List<StudentFee>? studentFees, this.studentFee}): _studentFees = studentFees;
  

@override@JsonKey() final  StudentFeeStatus status;
@override final  String? errorMessage;
@override final  String? successMessage;
 final  List<StudentFee>? _studentFees;
@override List<StudentFee>? get studentFees {
  final value = _studentFees;
  if (value == null) return null;
  if (_studentFees is EqualUnmodifiableListView) return _studentFees;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  StudentFee? studentFee;

/// Create a copy of StudentFeeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentFeeStateCopyWith<_StudentFeeState> get copyWith => __$StudentFeeStateCopyWithImpl<_StudentFeeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentFeeState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other._studentFees, _studentFees)&&(identical(other.studentFee, studentFee) || other.studentFee == studentFee));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(_studentFees),studentFee);

@override
String toString() {
  return 'StudentFeeState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, studentFees: $studentFees, studentFee: $studentFee)';
}


}

/// @nodoc
abstract mixin class _$StudentFeeStateCopyWith<$Res> implements $StudentFeeStateCopyWith<$Res> {
  factory _$StudentFeeStateCopyWith(_StudentFeeState value, $Res Function(_StudentFeeState) _then) = __$StudentFeeStateCopyWithImpl;
@override @useResult
$Res call({
 StudentFeeStatus status, String? errorMessage, String? successMessage, List<StudentFee>? studentFees, StudentFee? studentFee
});


@override $StudentFeeCopyWith<$Res>? get studentFee;

}
/// @nodoc
class __$StudentFeeStateCopyWithImpl<$Res>
    implements _$StudentFeeStateCopyWith<$Res> {
  __$StudentFeeStateCopyWithImpl(this._self, this._then);

  final _StudentFeeState _self;
  final $Res Function(_StudentFeeState) _then;

/// Create a copy of StudentFeeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? studentFees = freezed,Object? studentFee = freezed,}) {
  return _then(_StudentFeeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StudentFeeStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,studentFees: freezed == studentFees ? _self._studentFees : studentFees // ignore: cast_nullable_to_non_nullable
as List<StudentFee>?,studentFee: freezed == studentFee ? _self.studentFee : studentFee // ignore: cast_nullable_to_non_nullable
as StudentFee?,
  ));
}

/// Create a copy of StudentFeeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentFeeCopyWith<$Res>? get studentFee {
    if (_self.studentFee == null) {
    return null;
  }

  return $StudentFeeCopyWith<$Res>(_self.studentFee!, (value) {
    return _then(_self.copyWith(studentFee: value));
  });
}
}

// dart format on
