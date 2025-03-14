// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_class_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StudentClassState {

 StudentClassStatus get status; String? get errorMessage; String? get successMessage; List<StudentClass>? get studentClasss; StudentClass? get studentClass;
/// Create a copy of StudentClassState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentClassStateCopyWith<StudentClassState> get copyWith => _$StudentClassStateCopyWithImpl<StudentClassState>(this as StudentClassState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentClassState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other.studentClasss, studentClasss)&&(identical(other.studentClass, studentClass) || other.studentClass == studentClass));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(studentClasss),studentClass);

@override
String toString() {
  return 'StudentClassState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, studentClasss: $studentClasss, studentClass: $studentClass)';
}


}

/// @nodoc
abstract mixin class $StudentClassStateCopyWith<$Res>  {
  factory $StudentClassStateCopyWith(StudentClassState value, $Res Function(StudentClassState) _then) = _$StudentClassStateCopyWithImpl;
@useResult
$Res call({
 StudentClassStatus status, String? errorMessage, String? successMessage, List<StudentClass>? studentClasss, StudentClass? studentClass
});


$StudentClassCopyWith<$Res>? get studentClass;

}
/// @nodoc
class _$StudentClassStateCopyWithImpl<$Res>
    implements $StudentClassStateCopyWith<$Res> {
  _$StudentClassStateCopyWithImpl(this._self, this._then);

  final StudentClassState _self;
  final $Res Function(StudentClassState) _then;

/// Create a copy of StudentClassState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? studentClasss = freezed,Object? studentClass = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StudentClassStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,studentClasss: freezed == studentClasss ? _self.studentClasss : studentClasss // ignore: cast_nullable_to_non_nullable
as List<StudentClass>?,studentClass: freezed == studentClass ? _self.studentClass : studentClass // ignore: cast_nullable_to_non_nullable
as StudentClass?,
  ));
}
/// Create a copy of StudentClassState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentClassCopyWith<$Res>? get studentClass {
    if (_self.studentClass == null) {
    return null;
  }

  return $StudentClassCopyWith<$Res>(_self.studentClass!, (value) {
    return _then(_self.copyWith(studentClass: value));
  });
}
}


/// @nodoc


class _StudentClassState implements StudentClassState {
  const _StudentClassState({this.status = StudentClassStatus.initial, this.errorMessage, this.successMessage, final  List<StudentClass>? studentClasss, this.studentClass}): _studentClasss = studentClasss;
  

@override@JsonKey() final  StudentClassStatus status;
@override final  String? errorMessage;
@override final  String? successMessage;
 final  List<StudentClass>? _studentClasss;
@override List<StudentClass>? get studentClasss {
  final value = _studentClasss;
  if (value == null) return null;
  if (_studentClasss is EqualUnmodifiableListView) return _studentClasss;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  StudentClass? studentClass;

/// Create a copy of StudentClassState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentClassStateCopyWith<_StudentClassState> get copyWith => __$StudentClassStateCopyWithImpl<_StudentClassState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentClassState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other._studentClasss, _studentClasss)&&(identical(other.studentClass, studentClass) || other.studentClass == studentClass));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(_studentClasss),studentClass);

@override
String toString() {
  return 'StudentClassState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, studentClasss: $studentClasss, studentClass: $studentClass)';
}


}

/// @nodoc
abstract mixin class _$StudentClassStateCopyWith<$Res> implements $StudentClassStateCopyWith<$Res> {
  factory _$StudentClassStateCopyWith(_StudentClassState value, $Res Function(_StudentClassState) _then) = __$StudentClassStateCopyWithImpl;
@override @useResult
$Res call({
 StudentClassStatus status, String? errorMessage, String? successMessage, List<StudentClass>? studentClasss, StudentClass? studentClass
});


@override $StudentClassCopyWith<$Res>? get studentClass;

}
/// @nodoc
class __$StudentClassStateCopyWithImpl<$Res>
    implements _$StudentClassStateCopyWith<$Res> {
  __$StudentClassStateCopyWithImpl(this._self, this._then);

  final _StudentClassState _self;
  final $Res Function(_StudentClassState) _then;

/// Create a copy of StudentClassState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? studentClasss = freezed,Object? studentClass = freezed,}) {
  return _then(_StudentClassState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StudentClassStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,studentClasss: freezed == studentClasss ? _self._studentClasss : studentClasss // ignore: cast_nullable_to_non_nullable
as List<StudentClass>?,studentClass: freezed == studentClass ? _self.studentClass : studentClass // ignore: cast_nullable_to_non_nullable
as StudentClass?,
  ));
}

/// Create a copy of StudentClassState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentClassCopyWith<$Res>? get studentClass {
    if (_self.studentClass == null) {
    return null;
  }

  return $StudentClassCopyWith<$Res>(_self.studentClass!, (value) {
    return _then(_self.copyWith(studentClass: value));
  });
}
}

// dart format on
