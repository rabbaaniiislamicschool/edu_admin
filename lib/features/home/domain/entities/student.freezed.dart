// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Student {
  String get studentId => throw _privateConstructorUsedError;
  String get studentNumberId => throw _privateConstructorUsedError;
  String? get guardianName => throw _privateConstructorUsedError;
  String? get guardianPhone => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get studentNationalId => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int get schoolId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentCopyWith<Student> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res, Student>;
  @useResult
  $Res call({
    String studentId,
    String studentNumberId,
    String? guardianName,
    String? guardianPhone,
    DateTime createdAt,
    String? studentNationalId,
    DateTime? updatedAt,
    int schoolId,
    String status,
    User user,
  });

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$StudentCopyWithImpl<$Res, $Val extends Student>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? studentNumberId = null,
    Object? guardianName = freezed,
    Object? guardianPhone = freezed,
    Object? createdAt = null,
    Object? studentNationalId = freezed,
    Object? updatedAt = freezed,
    Object? schoolId = null,
    Object? status = null,
    Object? user = null,
  }) {
    return _then(
      _value.copyWith(
            studentId:
                null == studentId
                    ? _value.studentId
                    : studentId // ignore: cast_nullable_to_non_nullable
                        as String,
            studentNumberId:
                null == studentNumberId
                    ? _value.studentNumberId
                    : studentNumberId // ignore: cast_nullable_to_non_nullable
                        as String,
            guardianName:
                freezed == guardianName
                    ? _value.guardianName
                    : guardianName // ignore: cast_nullable_to_non_nullable
                        as String?,
            guardianPhone:
                freezed == guardianPhone
                    ? _value.guardianPhone
                    : guardianPhone // ignore: cast_nullable_to_non_nullable
                        as String?,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            studentNationalId:
                freezed == studentNationalId
                    ? _value.studentNationalId
                    : studentNationalId // ignore: cast_nullable_to_non_nullable
                        as String?,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            schoolId:
                null == schoolId
                    ? _value.schoolId
                    : schoolId // ignore: cast_nullable_to_non_nullable
                        as int,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            user:
                null == user
                    ? _value.user
                    : user // ignore: cast_nullable_to_non_nullable
                        as User,
          )
          as $Val,
    );
  }

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentImplCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$$StudentImplCopyWith(
    _$StudentImpl value,
    $Res Function(_$StudentImpl) then,
  ) = __$$StudentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String studentId,
    String studentNumberId,
    String? guardianName,
    String? guardianPhone,
    DateTime createdAt,
    String? studentNationalId,
    DateTime? updatedAt,
    int schoolId,
    String status,
    User user,
  });

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$StudentImplCopyWithImpl<$Res>
    extends _$StudentCopyWithImpl<$Res, _$StudentImpl>
    implements _$$StudentImplCopyWith<$Res> {
  __$$StudentImplCopyWithImpl(
    _$StudentImpl _value,
    $Res Function(_$StudentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? studentNumberId = null,
    Object? guardianName = freezed,
    Object? guardianPhone = freezed,
    Object? createdAt = null,
    Object? studentNationalId = freezed,
    Object? updatedAt = freezed,
    Object? schoolId = null,
    Object? status = null,
    Object? user = null,
  }) {
    return _then(
      _$StudentImpl(
        studentId:
            null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                    as String,
        studentNumberId:
            null == studentNumberId
                ? _value.studentNumberId
                : studentNumberId // ignore: cast_nullable_to_non_nullable
                    as String,
        guardianName:
            freezed == guardianName
                ? _value.guardianName
                : guardianName // ignore: cast_nullable_to_non_nullable
                    as String?,
        guardianPhone:
            freezed == guardianPhone
                ? _value.guardianPhone
                : guardianPhone // ignore: cast_nullable_to_non_nullable
                    as String?,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        studentNationalId:
            freezed == studentNationalId
                ? _value.studentNationalId
                : studentNationalId // ignore: cast_nullable_to_non_nullable
                    as String?,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        schoolId:
            null == schoolId
                ? _value.schoolId
                : schoolId // ignore: cast_nullable_to_non_nullable
                    as int,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        user:
            null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as User,
      ),
    );
  }
}

/// @nodoc

class _$StudentImpl implements _Student {
  const _$StudentImpl({
    required this.studentId,
    required this.studentNumberId,
    this.guardianName,
    this.guardianPhone,
    required this.createdAt,
    this.studentNationalId,
    this.updatedAt,
    required this.schoolId,
    required this.status,
    required this.user,
  });

  @override
  final String studentId;
  @override
  final String studentNumberId;
  @override
  final String? guardianName;
  @override
  final String? guardianPhone;
  @override
  final DateTime createdAt;
  @override
  final String? studentNationalId;
  @override
  final DateTime? updatedAt;
  @override
  final int schoolId;
  @override
  final String status;
  @override
  final User user;

  @override
  String toString() {
    return 'Student(studentId: $studentId, studentNumberId: $studentNumberId, guardianName: $guardianName, guardianPhone: $guardianPhone, createdAt: $createdAt, studentNationalId: $studentNationalId, updatedAt: $updatedAt, schoolId: $schoolId, status: $status, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentNumberId, studentNumberId) ||
                other.studentNumberId == studentNumberId) &&
            (identical(other.guardianName, guardianName) ||
                other.guardianName == guardianName) &&
            (identical(other.guardianPhone, guardianPhone) ||
                other.guardianPhone == guardianPhone) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.studentNationalId, studentNationalId) ||
                other.studentNationalId == studentNationalId) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    studentId,
    studentNumberId,
    guardianName,
    guardianPhone,
    createdAt,
    studentNationalId,
    updatedAt,
    schoolId,
    status,
    user,
  );

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      __$$StudentImplCopyWithImpl<_$StudentImpl>(this, _$identity);
}

abstract class _Student implements Student {
  const factory _Student({
    required final String studentId,
    required final String studentNumberId,
    final String? guardianName,
    final String? guardianPhone,
    required final DateTime createdAt,
    final String? studentNationalId,
    final DateTime? updatedAt,
    required final int schoolId,
    required final String status,
    required final User user,
  }) = _$StudentImpl;

  @override
  String get studentId;
  @override
  String get studentNumberId;
  @override
  String? get guardianName;
  @override
  String? get guardianPhone;
  @override
  DateTime get createdAt;
  @override
  String? get studentNationalId;
  @override
  DateTime? get updatedAt;
  @override
  int get schoolId;
  @override
  String get status;
  @override
  User get user;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
