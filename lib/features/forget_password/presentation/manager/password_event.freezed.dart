// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PasswordEvent {
  String? get newPassword => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String studentNumberId,
      String dob,
      String? newPassword,
    )
    forget,
    required TResult Function(String newPassword) update,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studentNumberId, String dob, String? newPassword)?
    forget,
    TResult? Function(String newPassword)? update,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studentNumberId, String dob, String? newPassword)?
    forget,
    TResult Function(String newPassword)? update,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgetPasswordEvent value) forget,
    required TResult Function(UpdatePasswordEvent value) update,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgetPasswordEvent value)? forget,
    TResult? Function(UpdatePasswordEvent value)? update,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgetPasswordEvent value)? forget,
    TResult Function(UpdatePasswordEvent value)? update,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of PasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordEventCopyWith<PasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordEventCopyWith<$Res> {
  factory $PasswordEventCopyWith(
    PasswordEvent value,
    $Res Function(PasswordEvent) then,
  ) = _$PasswordEventCopyWithImpl<$Res, PasswordEvent>;
  @useResult
  $Res call({String newPassword});
}

/// @nodoc
class _$PasswordEventCopyWithImpl<$Res, $Val extends PasswordEvent>
    implements $PasswordEventCopyWith<$Res> {
  _$PasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? newPassword = null}) {
    return _then(
      _value.copyWith(
            newPassword:
                null == newPassword
                    ? _value.newPassword!
                    : newPassword // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ForgetPasswordEventImplCopyWith<$Res>
    implements $PasswordEventCopyWith<$Res> {
  factory _$$ForgetPasswordEventImplCopyWith(
    _$ForgetPasswordEventImpl value,
    $Res Function(_$ForgetPasswordEventImpl) then,
  ) = __$$ForgetPasswordEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String studentNumberId, String dob, String? newPassword});
}

/// @nodoc
class __$$ForgetPasswordEventImplCopyWithImpl<$Res>
    extends _$PasswordEventCopyWithImpl<$Res, _$ForgetPasswordEventImpl>
    implements _$$ForgetPasswordEventImplCopyWith<$Res> {
  __$$ForgetPasswordEventImplCopyWithImpl(
    _$ForgetPasswordEventImpl _value,
    $Res Function(_$ForgetPasswordEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentNumberId = null,
    Object? dob = null,
    Object? newPassword = freezed,
  }) {
    return _then(
      _$ForgetPasswordEventImpl(
        studentNumberId:
            null == studentNumberId
                ? _value.studentNumberId
                : studentNumberId // ignore: cast_nullable_to_non_nullable
                    as String,
        dob:
            null == dob
                ? _value.dob
                : dob // ignore: cast_nullable_to_non_nullable
                    as String,
        newPassword:
            freezed == newPassword
                ? _value.newPassword
                : newPassword // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$ForgetPasswordEventImpl
    with DiagnosticableTreeMixin
    implements ForgetPasswordEvent {
  const _$ForgetPasswordEventImpl({
    required this.studentNumberId,
    required this.dob,
    this.newPassword,
  });

  @override
  final String studentNumberId;
  @override
  final String dob;
  @override
  final String? newPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PasswordEvent.forget(studentNumberId: $studentNumberId, dob: $dob, newPassword: $newPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PasswordEvent.forget'))
      ..add(DiagnosticsProperty('studentNumberId', studentNumberId))
      ..add(DiagnosticsProperty('dob', dob))
      ..add(DiagnosticsProperty('newPassword', newPassword));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordEventImpl &&
            (identical(other.studentNumberId, studentNumberId) ||
                other.studentNumberId == studentNumberId) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, studentNumberId, dob, newPassword);

  /// Create a copy of PasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetPasswordEventImplCopyWith<_$ForgetPasswordEventImpl> get copyWith =>
      __$$ForgetPasswordEventImplCopyWithImpl<_$ForgetPasswordEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String studentNumberId,
      String dob,
      String? newPassword,
    )
    forget,
    required TResult Function(String newPassword) update,
  }) {
    return forget(studentNumberId, dob, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studentNumberId, String dob, String? newPassword)?
    forget,
    TResult? Function(String newPassword)? update,
  }) {
    return forget?.call(studentNumberId, dob, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studentNumberId, String dob, String? newPassword)?
    forget,
    TResult Function(String newPassword)? update,
    required TResult orElse(),
  }) {
    if (forget != null) {
      return forget(studentNumberId, dob, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgetPasswordEvent value) forget,
    required TResult Function(UpdatePasswordEvent value) update,
  }) {
    return forget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgetPasswordEvent value)? forget,
    TResult? Function(UpdatePasswordEvent value)? update,
  }) {
    return forget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgetPasswordEvent value)? forget,
    TResult Function(UpdatePasswordEvent value)? update,
    required TResult orElse(),
  }) {
    if (forget != null) {
      return forget(this);
    }
    return orElse();
  }
}

abstract class ForgetPasswordEvent implements PasswordEvent {
  const factory ForgetPasswordEvent({
    required final String studentNumberId,
    required final String dob,
    final String? newPassword,
  }) = _$ForgetPasswordEventImpl;

  String get studentNumberId;
  String get dob;
  @override
  String? get newPassword;

  /// Create a copy of PasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgetPasswordEventImplCopyWith<_$ForgetPasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePasswordEventImplCopyWith<$Res>
    implements $PasswordEventCopyWith<$Res> {
  factory _$$UpdatePasswordEventImplCopyWith(
    _$UpdatePasswordEventImpl value,
    $Res Function(_$UpdatePasswordEventImpl) then,
  ) = __$$UpdatePasswordEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String newPassword});
}

/// @nodoc
class __$$UpdatePasswordEventImplCopyWithImpl<$Res>
    extends _$PasswordEventCopyWithImpl<$Res, _$UpdatePasswordEventImpl>
    implements _$$UpdatePasswordEventImplCopyWith<$Res> {
  __$$UpdatePasswordEventImplCopyWithImpl(
    _$UpdatePasswordEventImpl _value,
    $Res Function(_$UpdatePasswordEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? newPassword = null}) {
    return _then(
      _$UpdatePasswordEventImpl(
        newPassword:
            null == newPassword
                ? _value.newPassword
                : newPassword // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$UpdatePasswordEventImpl
    with DiagnosticableTreeMixin
    implements UpdatePasswordEvent {
  const _$UpdatePasswordEventImpl({required this.newPassword});

  @override
  final String newPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PasswordEvent.update(newPassword: $newPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PasswordEvent.update'))
      ..add(DiagnosticsProperty('newPassword', newPassword));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePasswordEventImpl &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPassword);

  /// Create a copy of PasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePasswordEventImplCopyWith<_$UpdatePasswordEventImpl> get copyWith =>
      __$$UpdatePasswordEventImplCopyWithImpl<_$UpdatePasswordEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String studentNumberId,
      String dob,
      String? newPassword,
    )
    forget,
    required TResult Function(String newPassword) update,
  }) {
    return update(newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studentNumberId, String dob, String? newPassword)?
    forget,
    TResult? Function(String newPassword)? update,
  }) {
    return update?.call(newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studentNumberId, String dob, String? newPassword)?
    forget,
    TResult Function(String newPassword)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgetPasswordEvent value) forget,
    required TResult Function(UpdatePasswordEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgetPasswordEvent value)? forget,
    TResult? Function(UpdatePasswordEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgetPasswordEvent value)? forget,
    TResult Function(UpdatePasswordEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdatePasswordEvent implements PasswordEvent {
  const factory UpdatePasswordEvent({required final String newPassword}) =
      _$UpdatePasswordEventImpl;

  @override
  String get newPassword;

  /// Create a copy of PasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePasswordEventImplCopyWith<_$UpdatePasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
