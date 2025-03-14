// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PasswordState implements DiagnosticableTreeMixin {

 bool get isLoading; String? get errorMessage; bool? get isUpdateSuccess; User? get updatedUser;
/// Create a copy of PasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordStateCopyWith<PasswordState> get copyWith => _$PasswordStateCopyWithImpl<PasswordState>(this as PasswordState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PasswordState'))
    ..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('errorMessage', errorMessage))..add(DiagnosticsProperty('isUpdateSuccess', isUpdateSuccess))..add(DiagnosticsProperty('updatedUser', updatedUser));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isUpdateSuccess, isUpdateSuccess) || other.isUpdateSuccess == isUpdateSuccess)&&(identical(other.updatedUser, updatedUser) || other.updatedUser == updatedUser));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,errorMessage,isUpdateSuccess,updatedUser);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PasswordState(isLoading: $isLoading, errorMessage: $errorMessage, isUpdateSuccess: $isUpdateSuccess, updatedUser: $updatedUser)';
}


}

/// @nodoc
abstract mixin class $PasswordStateCopyWith<$Res>  {
  factory $PasswordStateCopyWith(PasswordState value, $Res Function(PasswordState) _then) = _$PasswordStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String? errorMessage, bool? isUpdateSuccess, User? updatedUser
});


$UserCopyWith<$Res>? get updatedUser;

}
/// @nodoc
class _$PasswordStateCopyWithImpl<$Res>
    implements $PasswordStateCopyWith<$Res> {
  _$PasswordStateCopyWithImpl(this._self, this._then);

  final PasswordState _self;
  final $Res Function(PasswordState) _then;

/// Create a copy of PasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? errorMessage = freezed,Object? isUpdateSuccess = freezed,Object? updatedUser = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isUpdateSuccess: freezed == isUpdateSuccess ? _self.isUpdateSuccess : isUpdateSuccess // ignore: cast_nullable_to_non_nullable
as bool?,updatedUser: freezed == updatedUser ? _self.updatedUser : updatedUser // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}
/// Create a copy of PasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get updatedUser {
    if (_self.updatedUser == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.updatedUser!, (value) {
    return _then(_self.copyWith(updatedUser: value));
  });
}
}


/// @nodoc


class _PasswordState with DiagnosticableTreeMixin implements PasswordState {
  const _PasswordState({required this.isLoading, this.errorMessage, this.isUpdateSuccess, this.updatedUser});
  

@override final  bool isLoading;
@override final  String? errorMessage;
@override final  bool? isUpdateSuccess;
@override final  User? updatedUser;

/// Create a copy of PasswordState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasswordStateCopyWith<_PasswordState> get copyWith => __$PasswordStateCopyWithImpl<_PasswordState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PasswordState'))
    ..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('errorMessage', errorMessage))..add(DiagnosticsProperty('isUpdateSuccess', isUpdateSuccess))..add(DiagnosticsProperty('updatedUser', updatedUser));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasswordState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isUpdateSuccess, isUpdateSuccess) || other.isUpdateSuccess == isUpdateSuccess)&&(identical(other.updatedUser, updatedUser) || other.updatedUser == updatedUser));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,errorMessage,isUpdateSuccess,updatedUser);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PasswordState(isLoading: $isLoading, errorMessage: $errorMessage, isUpdateSuccess: $isUpdateSuccess, updatedUser: $updatedUser)';
}


}

/// @nodoc
abstract mixin class _$PasswordStateCopyWith<$Res> implements $PasswordStateCopyWith<$Res> {
  factory _$PasswordStateCopyWith(_PasswordState value, $Res Function(_PasswordState) _then) = __$PasswordStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String? errorMessage, bool? isUpdateSuccess, User? updatedUser
});


@override $UserCopyWith<$Res>? get updatedUser;

}
/// @nodoc
class __$PasswordStateCopyWithImpl<$Res>
    implements _$PasswordStateCopyWith<$Res> {
  __$PasswordStateCopyWithImpl(this._self, this._then);

  final _PasswordState _self;
  final $Res Function(_PasswordState) _then;

/// Create a copy of PasswordState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? errorMessage = freezed,Object? isUpdateSuccess = freezed,Object? updatedUser = freezed,}) {
  return _then(_PasswordState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isUpdateSuccess: freezed == isUpdateSuccess ? _self.isUpdateSuccess : isUpdateSuccess // ignore: cast_nullable_to_non_nullable
as bool?,updatedUser: freezed == updatedUser ? _self.updatedUser : updatedUser // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}

/// Create a copy of PasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get updatedUser {
    if (_self.updatedUser == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.updatedUser!, (value) {
    return _then(_self.copyWith(updatedUser: value));
  });
}
}

// dart format on
