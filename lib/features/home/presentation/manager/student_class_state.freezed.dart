// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_class_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StudentClassState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  StudentClass? get studentClass => throw _privateConstructorUsedError;
  User? get currentUser => throw _privateConstructorUsedError;
  List<User>? get allUsers => throw _privateConstructorUsedError;

  /// Create a copy of StudentClassState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentClassStateCopyWith<StudentClassState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentClassStateCopyWith<$Res> {
  factory $StudentClassStateCopyWith(
    StudentClassState value,
    $Res Function(StudentClassState) then,
  ) = _$StudentClassStateCopyWithImpl<$Res, StudentClassState>;
  @useResult
  $Res call({
    bool isLoading,
    String? errorMessage,
    StudentClass? studentClass,
    User? currentUser,
    List<User>? allUsers,
  });

  $StudentClassCopyWith<$Res>? get studentClass;
  $UserCopyWith<$Res>? get currentUser;
}

/// @nodoc
class _$StudentClassStateCopyWithImpl<$Res, $Val extends StudentClassState>
    implements $StudentClassStateCopyWith<$Res> {
  _$StudentClassStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentClassState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? studentClass = freezed,
    Object? currentUser = freezed,
    Object? allUsers = freezed,
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
            studentClass:
                freezed == studentClass
                    ? _value.studentClass
                    : studentClass // ignore: cast_nullable_to_non_nullable
                        as StudentClass?,
            currentUser:
                freezed == currentUser
                    ? _value.currentUser
                    : currentUser // ignore: cast_nullable_to_non_nullable
                        as User?,
            allUsers:
                freezed == allUsers
                    ? _value.allUsers
                    : allUsers // ignore: cast_nullable_to_non_nullable
                        as List<User>?,
          )
          as $Val,
    );
  }

  /// Create a copy of StudentClassState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentClassCopyWith<$Res>? get studentClass {
    if (_value.studentClass == null) {
      return null;
    }

    return $StudentClassCopyWith<$Res>(_value.studentClass!, (value) {
      return _then(_value.copyWith(studentClass: value) as $Val);
    });
  }

  /// Create a copy of StudentClassState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get currentUser {
    if (_value.currentUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.currentUser!, (value) {
      return _then(_value.copyWith(currentUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentClassStateImplCopyWith<$Res>
    implements $StudentClassStateCopyWith<$Res> {
  factory _$$StudentClassStateImplCopyWith(
    _$StudentClassStateImpl value,
    $Res Function(_$StudentClassStateImpl) then,
  ) = __$$StudentClassStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    String? errorMessage,
    StudentClass? studentClass,
    User? currentUser,
    List<User>? allUsers,
  });

  @override
  $StudentClassCopyWith<$Res>? get studentClass;
  @override
  $UserCopyWith<$Res>? get currentUser;
}

/// @nodoc
class __$$StudentClassStateImplCopyWithImpl<$Res>
    extends _$StudentClassStateCopyWithImpl<$Res, _$StudentClassStateImpl>
    implements _$$StudentClassStateImplCopyWith<$Res> {
  __$$StudentClassStateImplCopyWithImpl(
    _$StudentClassStateImpl _value,
    $Res Function(_$StudentClassStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentClassState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? studentClass = freezed,
    Object? currentUser = freezed,
    Object? allUsers = freezed,
  }) {
    return _then(
      _$StudentClassStateImpl(
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
        studentClass:
            freezed == studentClass
                ? _value.studentClass
                : studentClass // ignore: cast_nullable_to_non_nullable
                    as StudentClass?,
        currentUser:
            freezed == currentUser
                ? _value.currentUser
                : currentUser // ignore: cast_nullable_to_non_nullable
                    as User?,
        allUsers:
            freezed == allUsers
                ? _value._allUsers
                : allUsers // ignore: cast_nullable_to_non_nullable
                    as List<User>?,
      ),
    );
  }
}

/// @nodoc

class _$StudentClassStateImpl
    with DiagnosticableTreeMixin
    implements _StudentClassState {
  const _$StudentClassStateImpl({
    required this.isLoading,
    this.errorMessage,
    this.studentClass,
    this.currentUser,
    final List<User>? allUsers,
  }) : _allUsers = allUsers;

  @override
  final bool isLoading;
  @override
  final String? errorMessage;
  @override
  final StudentClass? studentClass;
  @override
  final User? currentUser;
  final List<User>? _allUsers;
  @override
  List<User>? get allUsers {
    final value = _allUsers;
    if (value == null) return null;
    if (_allUsers is EqualUnmodifiableListView) return _allUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StudentClassState(isLoading: $isLoading, errorMessage: $errorMessage, studentClass: $studentClass, currentUser: $currentUser, allUsers: $allUsers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StudentClassState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('studentClass', studentClass))
      ..add(DiagnosticsProperty('currentUser', currentUser))
      ..add(DiagnosticsProperty('allUsers', allUsers));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentClassStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.studentClass, studentClass) ||
                other.studentClass == studentClass) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            const DeepCollectionEquality().equals(other._allUsers, _allUsers));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    errorMessage,
    studentClass,
    currentUser,
    const DeepCollectionEquality().hash(_allUsers),
  );

  /// Create a copy of StudentClassState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentClassStateImplCopyWith<_$StudentClassStateImpl> get copyWith =>
      __$$StudentClassStateImplCopyWithImpl<_$StudentClassStateImpl>(
        this,
        _$identity,
      );
}

abstract class _StudentClassState implements StudentClassState {
  const factory _StudentClassState({
    required final bool isLoading,
    final String? errorMessage,
    final StudentClass? studentClass,
    final User? currentUser,
    final List<User>? allUsers,
  }) = _$StudentClassStateImpl;

  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  StudentClass? get studentClass;
  @override
  User? get currentUser;
  @override
  List<User>? get allUsers;

  /// Create a copy of StudentClassState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentClassStateImplCopyWith<_$StudentClassStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
