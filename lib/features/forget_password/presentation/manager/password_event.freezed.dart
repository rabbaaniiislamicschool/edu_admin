// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PasswordEvent implements DiagnosticableTreeMixin {

 String? get newPassword;
/// Create a copy of PasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordEventCopyWith<PasswordEvent> get copyWith => _$PasswordEventCopyWithImpl<PasswordEvent>(this as PasswordEvent, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PasswordEvent'))
    ..add(DiagnosticsProperty('newPassword', newPassword));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordEvent&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}


@override
int get hashCode => Object.hash(runtimeType,newPassword);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PasswordEvent(newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class $PasswordEventCopyWith<$Res>  {
  factory $PasswordEventCopyWith(PasswordEvent value, $Res Function(PasswordEvent) _then) = _$PasswordEventCopyWithImpl;
@useResult
$Res call({
 String newPassword
});




}
/// @nodoc
class _$PasswordEventCopyWithImpl<$Res>
    implements $PasswordEventCopyWith<$Res> {
  _$PasswordEventCopyWithImpl(this._self, this._then);

  final PasswordEvent _self;
  final $Res Function(PasswordEvent) _then;

/// Create a copy of PasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? newPassword = null,}) {
  return _then(_self.copyWith(
newPassword: null == newPassword ? _self.newPassword! : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class ForgetPasswordEvent with DiagnosticableTreeMixin implements PasswordEvent {
  const ForgetPasswordEvent({required this.studentNumberId, required this.dob, this.newPassword});
  

 final  String studentNumberId;
 final  String dob;
@override final  String? newPassword;

/// Create a copy of PasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgetPasswordEventCopyWith<ForgetPasswordEvent> get copyWith => _$ForgetPasswordEventCopyWithImpl<ForgetPasswordEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PasswordEvent.forget'))
    ..add(DiagnosticsProperty('studentNumberId', studentNumberId))..add(DiagnosticsProperty('dob', dob))..add(DiagnosticsProperty('newPassword', newPassword));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgetPasswordEvent&&(identical(other.studentNumberId, studentNumberId) || other.studentNumberId == studentNumberId)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}


@override
int get hashCode => Object.hash(runtimeType,studentNumberId,dob,newPassword);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PasswordEvent.forget(studentNumberId: $studentNumberId, dob: $dob, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class $ForgetPasswordEventCopyWith<$Res> implements $PasswordEventCopyWith<$Res> {
  factory $ForgetPasswordEventCopyWith(ForgetPasswordEvent value, $Res Function(ForgetPasswordEvent) _then) = _$ForgetPasswordEventCopyWithImpl;
@override @useResult
$Res call({
 String studentNumberId, String dob, String? newPassword
});




}
/// @nodoc
class _$ForgetPasswordEventCopyWithImpl<$Res>
    implements $ForgetPasswordEventCopyWith<$Res> {
  _$ForgetPasswordEventCopyWithImpl(this._self, this._then);

  final ForgetPasswordEvent _self;
  final $Res Function(ForgetPasswordEvent) _then;

/// Create a copy of PasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentNumberId = null,Object? dob = null,Object? newPassword = freezed,}) {
  return _then(ForgetPasswordEvent(
studentNumberId: null == studentNumberId ? _self.studentNumberId : studentNumberId // ignore: cast_nullable_to_non_nullable
as String,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String,newPassword: freezed == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class UpdatePasswordEvent with DiagnosticableTreeMixin implements PasswordEvent {
  const UpdatePasswordEvent({required this.newPassword});
  

@override final  String newPassword;

/// Create a copy of PasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePasswordEventCopyWith<UpdatePasswordEvent> get copyWith => _$UpdatePasswordEventCopyWithImpl<UpdatePasswordEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PasswordEvent.update'))
    ..add(DiagnosticsProperty('newPassword', newPassword));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePasswordEvent&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}


@override
int get hashCode => Object.hash(runtimeType,newPassword);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PasswordEvent.update(newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class $UpdatePasswordEventCopyWith<$Res> implements $PasswordEventCopyWith<$Res> {
  factory $UpdatePasswordEventCopyWith(UpdatePasswordEvent value, $Res Function(UpdatePasswordEvent) _then) = _$UpdatePasswordEventCopyWithImpl;
@override @useResult
$Res call({
 String newPassword
});




}
/// @nodoc
class _$UpdatePasswordEventCopyWithImpl<$Res>
    implements $UpdatePasswordEventCopyWith<$Res> {
  _$UpdatePasswordEventCopyWithImpl(this._self, this._then);

  final UpdatePasswordEvent _self;
  final $Res Function(UpdatePasswordEvent) _then;

/// Create a copy of PasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? newPassword = null,}) {
  return _then(UpdatePasswordEvent(
newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
