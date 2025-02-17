// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StudentModel _$StudentModelFromJson(Map<String, dynamic> json) {
  return _StudentModel.fromJson(json);
}

/// @nodoc
mixin _$StudentModel {
  String get studentId => throw _privateConstructorUsedError;
  String get studentNumberId => throw _privateConstructorUsedError;
  String? get guardianName => throw _privateConstructorUsedError;
  String? get guardianPhone => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get studentNationalId => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int get schoolId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  UserModel get users => throw _privateConstructorUsedError;

  /// Serializes this StudentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentModelCopyWith<StudentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentModelCopyWith<$Res> {
  factory $StudentModelCopyWith(
    StudentModel value,
    $Res Function(StudentModel) then,
  ) = _$StudentModelCopyWithImpl<$Res, StudentModel>;
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
    UserModel users,
  });

  $UserModelCopyWith<$Res> get users;
}

/// @nodoc
class _$StudentModelCopyWithImpl<$Res, $Val extends StudentModel>
    implements $StudentModelCopyWith<$Res> {
  _$StudentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentModel
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
    Object? users = null,
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
            users:
                null == users
                    ? _value.users
                    : users // ignore: cast_nullable_to_non_nullable
                        as UserModel,
          )
          as $Val,
    );
  }

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get users {
    return $UserModelCopyWith<$Res>(_value.users, (value) {
      return _then(_value.copyWith(users: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentModelImplCopyWith<$Res>
    implements $StudentModelCopyWith<$Res> {
  factory _$$StudentModelImplCopyWith(
    _$StudentModelImpl value,
    $Res Function(_$StudentModelImpl) then,
  ) = __$$StudentModelImplCopyWithImpl<$Res>;
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
    UserModel users,
  });

  @override
  $UserModelCopyWith<$Res> get users;
}

/// @nodoc
class __$$StudentModelImplCopyWithImpl<$Res>
    extends _$StudentModelCopyWithImpl<$Res, _$StudentModelImpl>
    implements _$$StudentModelImplCopyWith<$Res> {
  __$$StudentModelImplCopyWithImpl(
    _$StudentModelImpl _value,
    $Res Function(_$StudentModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentModel
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
    Object? users = null,
  }) {
    return _then(
      _$StudentModelImpl(
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
        users:
            null == users
                ? _value.users
                : users // ignore: cast_nullable_to_non_nullable
                    as UserModel,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$StudentModelImpl with DiagnosticableTreeMixin implements _StudentModel {
  const _$StudentModelImpl({
    required this.studentId,
    required this.studentNumberId,
    this.guardianName,
    this.guardianPhone,
    required this.createdAt,
    this.studentNationalId,
    this.updatedAt,
    required this.schoolId,
    required this.status,
    required this.users,
  });

  factory _$StudentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentModelImplFromJson(json);

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
  final UserModel users;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StudentModel(studentId: $studentId, studentNumberId: $studentNumberId, guardianName: $guardianName, guardianPhone: $guardianPhone, createdAt: $createdAt, studentNationalId: $studentNationalId, updatedAt: $updatedAt, schoolId: $schoolId, status: $status, users: $users)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StudentModel'))
      ..add(DiagnosticsProperty('studentId', studentId))
      ..add(DiagnosticsProperty('studentNumberId', studentNumberId))
      ..add(DiagnosticsProperty('guardianName', guardianName))
      ..add(DiagnosticsProperty('guardianPhone', guardianPhone))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('studentNationalId', studentNationalId))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('schoolId', schoolId))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('users', users));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentModelImpl &&
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
            (identical(other.users, users) || other.users == users));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    users,
  );

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentModelImplCopyWith<_$StudentModelImpl> get copyWith =>
      __$$StudentModelImplCopyWithImpl<_$StudentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentModelImplToJson(this);
  }
}

abstract class _StudentModel implements StudentModel {
  const factory _StudentModel({
    required final String studentId,
    required final String studentNumberId,
    final String? guardianName,
    final String? guardianPhone,
    required final DateTime createdAt,
    final String? studentNationalId,
    final DateTime? updatedAt,
    required final int schoolId,
    required final String status,
    required final UserModel users,
  }) = _$StudentModelImpl;

  factory _StudentModel.fromJson(Map<String, dynamic> json) =
      _$StudentModelImpl.fromJson;

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
  UserModel get users;

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentModelImplCopyWith<_$StudentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
