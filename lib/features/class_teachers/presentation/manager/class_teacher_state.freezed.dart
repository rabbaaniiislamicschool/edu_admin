// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_teacher_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClassTeacherState {

 ClassTeacherStatus get status; String? get errorMessage; String? get successMessage; List<ClassTeacher>? get classTeachers; ClassTeacher? get classTeacher;
/// Create a copy of ClassTeacherState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherStateCopyWith<ClassTeacherState> get copyWith => _$ClassTeacherStateCopyWithImpl<ClassTeacherState>(this as ClassTeacherState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other.classTeachers, classTeachers)&&(identical(other.classTeacher, classTeacher) || other.classTeacher == classTeacher));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(classTeachers),classTeacher);

@override
String toString() {
  return 'ClassTeacherState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, classTeachers: $classTeachers, classTeacher: $classTeacher)';
}


}

/// @nodoc
abstract mixin class $ClassTeacherStateCopyWith<$Res>  {
  factory $ClassTeacherStateCopyWith(ClassTeacherState value, $Res Function(ClassTeacherState) _then) = _$ClassTeacherStateCopyWithImpl;
@useResult
$Res call({
 ClassTeacherStatus status, String? errorMessage, String? successMessage, List<ClassTeacher>? classTeachers, ClassTeacher? classTeacher
});


$ClassTeacherCopyWith<$Res>? get classTeacher;

}
/// @nodoc
class _$ClassTeacherStateCopyWithImpl<$Res>
    implements $ClassTeacherStateCopyWith<$Res> {
  _$ClassTeacherStateCopyWithImpl(this._self, this._then);

  final ClassTeacherState _self;
  final $Res Function(ClassTeacherState) _then;

/// Create a copy of ClassTeacherState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? classTeachers = freezed,Object? classTeacher = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClassTeacherStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,classTeachers: freezed == classTeachers ? _self.classTeachers : classTeachers // ignore: cast_nullable_to_non_nullable
as List<ClassTeacher>?,classTeacher: freezed == classTeacher ? _self.classTeacher : classTeacher // ignore: cast_nullable_to_non_nullable
as ClassTeacher?,
  ));
}
/// Create a copy of ClassTeacherState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassTeacherCopyWith<$Res>? get classTeacher {
    if (_self.classTeacher == null) {
    return null;
  }

  return $ClassTeacherCopyWith<$Res>(_self.classTeacher!, (value) {
    return _then(_self.copyWith(classTeacher: value));
  });
}
}


/// @nodoc


class _ClassTeacherState implements ClassTeacherState {
  const _ClassTeacherState({this.status = ClassTeacherStatus.initial, this.errorMessage, this.successMessage, final  List<ClassTeacher>? classTeachers, this.classTeacher}): _classTeachers = classTeachers;
  

@override@JsonKey() final  ClassTeacherStatus status;
@override final  String? errorMessage;
@override final  String? successMessage;
 final  List<ClassTeacher>? _classTeachers;
@override List<ClassTeacher>? get classTeachers {
  final value = _classTeachers;
  if (value == null) return null;
  if (_classTeachers is EqualUnmodifiableListView) return _classTeachers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  ClassTeacher? classTeacher;

/// Create a copy of ClassTeacherState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherStateCopyWith<_ClassTeacherState> get copyWith => __$ClassTeacherStateCopyWithImpl<_ClassTeacherState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other._classTeachers, _classTeachers)&&(identical(other.classTeacher, classTeacher) || other.classTeacher == classTeacher));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(_classTeachers),classTeacher);

@override
String toString() {
  return 'ClassTeacherState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, classTeachers: $classTeachers, classTeacher: $classTeacher)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherStateCopyWith<$Res> implements $ClassTeacherStateCopyWith<$Res> {
  factory _$ClassTeacherStateCopyWith(_ClassTeacherState value, $Res Function(_ClassTeacherState) _then) = __$ClassTeacherStateCopyWithImpl;
@override @useResult
$Res call({
 ClassTeacherStatus status, String? errorMessage, String? successMessage, List<ClassTeacher>? classTeachers, ClassTeacher? classTeacher
});


@override $ClassTeacherCopyWith<$Res>? get classTeacher;

}
/// @nodoc
class __$ClassTeacherStateCopyWithImpl<$Res>
    implements _$ClassTeacherStateCopyWith<$Res> {
  __$ClassTeacherStateCopyWithImpl(this._self, this._then);

  final _ClassTeacherState _self;
  final $Res Function(_ClassTeacherState) _then;

/// Create a copy of ClassTeacherState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? classTeachers = freezed,Object? classTeacher = freezed,}) {
  return _then(_ClassTeacherState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClassTeacherStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,classTeachers: freezed == classTeachers ? _self._classTeachers : classTeachers // ignore: cast_nullable_to_non_nullable
as List<ClassTeacher>?,classTeacher: freezed == classTeacher ? _self.classTeacher : classTeacher // ignore: cast_nullable_to_non_nullable
as ClassTeacher?,
  ));
}

/// Create a copy of ClassTeacherState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassTeacherCopyWith<$Res>? get classTeacher {
    if (_self.classTeacher == null) {
    return null;
  }

  return $ClassTeacherCopyWith<$Res>(_self.classTeacher!, (value) {
    return _then(_self.copyWith(classTeacher: value));
  });
}
}

// dart format on
