// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PasswordState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool? get isUpdateSuccess => throw _privateConstructorUsedError;
  User? get updatedUser => throw _privateConstructorUsedError;

  /// Create a copy of PasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordStateCopyWith<PasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordStateCopyWith<$Res> {
  factory $PasswordStateCopyWith(
    PasswordState value,
    $Res Function(PasswordState) then,
  ) = _$PasswordStateCopyWithImpl<$Res, PasswordState>;
  @useResult
  $Res call({
    bool isLoading,
    String? errorMessage,
    bool? isUpdateSuccess,
    User? updatedUser,
  });

  $UserCopyWith<$Res>? get updatedUser;
}

/// @nodoc
class _$PasswordStateCopyWithImpl<$Res, $Val extends PasswordState>
    implements $PasswordStateCopyWith<$Res> {
  _$PasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? isUpdateSuccess = freezed,
    Object? updatedUser = freezed,
  }) {
    return _then(
      _value.copyWith(
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            errorMessage:
                freezed == errorMessage
                    ? _value.errorMessage
                    : errorMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
            isUpdateSuccess:
                freezed == isUpdateSuccess
                    ? _value.isUpdateSuccess
                    : isUpdateSuccess // ignore: cast_nullable_to_non_nullable
                        as bool?,
            updatedUser:
                freezed == updatedUser
                    ? _value.updatedUser
                    : updatedUser // ignore: cast_nullable_to_non_nullable
                        as User?,
          )
          as $Val,
    );
  }

  /// Create a copy of PasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get updatedUser {
    if (_value.updatedUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.updatedUser!, (value) {
      return _then(_value.copyWith(updatedUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PasswordStateImplCopyWith<$Res>
    implements $PasswordStateCopyWith<$Res> {
  factory _$$PasswordStateImplCopyWith(
    _$PasswordStateImpl value,
    $Res Function(_$PasswordStateImpl) then,
  ) = __$$PasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    String? errorMessage,
    bool? isUpdateSuccess,
    User? updatedUser,
  });

  @override
  $UserCopyWith<$Res>? get updatedUser;
}

/// @nodoc
class __$$PasswordStateImplCopyWithImpl<$Res>
    extends _$PasswordStateCopyWithImpl<$Res, _$PasswordStateImpl>
    implements _$$PasswordStateImplCopyWith<$Res> {
  __$$PasswordStateImplCopyWithImpl(
    _$PasswordStateImpl _value,
    $Res Function(_$PasswordStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? isUpdateSuccess = freezed,
    Object? updatedUser = freezed,
  }) {
    return _then(
      _$PasswordStateImpl(
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        errorMessage:
            freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
        isUpdateSuccess:
            freezed == isUpdateSuccess
                ? _value.isUpdateSuccess
                : isUpdateSuccess // ignore: cast_nullable_to_non_nullable
                    as bool?,
        updatedUser:
            freezed == updatedUser
                ? _value.updatedUser
                : updatedUser // ignore: cast_nullable_to_non_nullable
                    as User?,
      ),
    );
  }
}

/// @nodoc

class _$PasswordStateImpl
    with DiagnosticableTreeMixin
    implements _PasswordState {
  const _$PasswordStateImpl({
    required this.isLoading,
    this.errorMessage,
    this.isUpdateSuccess,
    this.updatedUser,
  });

  @override
  final bool isLoading;
  @override
  final String? errorMessage;
  @override
  final bool? isUpdateSuccess;
  @override
  final User? updatedUser;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PasswordState(isLoading: $isLoading, errorMessage: $errorMessage, isUpdateSuccess: $isUpdateSuccess, updatedUser: $updatedUser)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PasswordState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('isUpdateSuccess', isUpdateSuccess))
      ..add(DiagnosticsProperty('updatedUser', updatedUser));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isUpdateSuccess, isUpdateSuccess) ||
                other.isUpdateSuccess == isUpdateSuccess) &&
            (identical(other.updatedUser, updatedUser) ||
                other.updatedUser == updatedUser));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    errorMessage,
    isUpdateSuccess,
    updatedUser,
  );

  /// Create a copy of PasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordStateImplCopyWith<_$PasswordStateImpl> get copyWith =>
      __$$PasswordStateImplCopyWithImpl<_$PasswordStateImpl>(this, _$identity);
}

abstract class _PasswordState implements PasswordState {
  const factory _PasswordState({
    required final bool isLoading,
    final String? errorMessage,
    final bool? isUpdateSuccess,
    final User? updatedUser,
  }) = _$PasswordStateImpl;

  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  bool? get isUpdateSuccess;
  @override
  User? get updatedUser;

  /// Create a copy of PasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordStateImplCopyWith<_$PasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
