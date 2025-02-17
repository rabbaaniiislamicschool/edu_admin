// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_class_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StudentClassModel _$StudentClassModelFromJson(Map<String, dynamic> json) {
  return _StudentClassModel.fromJson(json);
}

/// @nodoc
mixin _$StudentClassModel {
  int get studentClassId => throw _privateConstructorUsedError;
  String get studentId => throw _privateConstructorUsedError;
  int get classId => throw _privateConstructorUsedError;
  int get academicYearId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  StudentModel get students => throw _privateConstructorUsedError;
  ClassModel get classes => throw _privateConstructorUsedError;

  /// Serializes this StudentClassModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentClassModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentClassModelCopyWith<StudentClassModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentClassModelCopyWith<$Res> {
  factory $StudentClassModelCopyWith(
    StudentClassModel value,
    $Res Function(StudentClassModel) then,
  ) = _$StudentClassModelCopyWithImpl<$Res, StudentClassModel>;
  @useResult
  $Res call({
    int studentClassId,
    String studentId,
    int classId,
    int academicYearId,
    String status,
    String createdAt,
    StudentModel students,
    ClassModel classes,
  });

  $StudentModelCopyWith<$Res> get students;
  $ClassModelCopyWith<$Res> get classes;
}

/// @nodoc
class _$StudentClassModelCopyWithImpl<$Res, $Val extends StudentClassModel>
    implements $StudentClassModelCopyWith<$Res> {
  _$StudentClassModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentClassModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentClassId = null,
    Object? studentId = null,
    Object? classId = null,
    Object? academicYearId = null,
    Object? status = null,
    Object? createdAt = null,
    Object? students = null,
    Object? classes = null,
  }) {
    return _then(
      _value.copyWith(
            studentClassId:
                null == studentClassId
                    ? _value.studentClassId
                    : studentClassId // ignore: cast_nullable_to_non_nullable
                        as int,
            studentId:
                null == studentId
                    ? _value.studentId
                    : studentId // ignore: cast_nullable_to_non_nullable
                        as String,
            classId:
                null == classId
                    ? _value.classId
                    : classId // ignore: cast_nullable_to_non_nullable
                        as int,
            academicYearId:
                null == academicYearId
                    ? _value.academicYearId
                    : academicYearId // ignore: cast_nullable_to_non_nullable
                        as int,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as String,
            students:
                null == students
                    ? _value.students
                    : students // ignore: cast_nullable_to_non_nullable
                        as StudentModel,
            classes:
                null == classes
                    ? _value.classes
                    : classes // ignore: cast_nullable_to_non_nullable
                        as ClassModel,
          )
          as $Val,
    );
  }

  /// Create a copy of StudentClassModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentModelCopyWith<$Res> get students {
    return $StudentModelCopyWith<$Res>(_value.students, (value) {
      return _then(_value.copyWith(students: value) as $Val);
    });
  }

  /// Create a copy of StudentClassModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassModelCopyWith<$Res> get classes {
    return $ClassModelCopyWith<$Res>(_value.classes, (value) {
      return _then(_value.copyWith(classes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentClassModelImplCopyWith<$Res>
    implements $StudentClassModelCopyWith<$Res> {
  factory _$$StudentClassModelImplCopyWith(
    _$StudentClassModelImpl value,
    $Res Function(_$StudentClassModelImpl) then,
  ) = __$$StudentClassModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int studentClassId,
    String studentId,
    int classId,
    int academicYearId,
    String status,
    String createdAt,
    StudentModel students,
    ClassModel classes,
  });

  @override
  $StudentModelCopyWith<$Res> get students;
  @override
  $ClassModelCopyWith<$Res> get classes;
}

/// @nodoc
class __$$StudentClassModelImplCopyWithImpl<$Res>
    extends _$StudentClassModelCopyWithImpl<$Res, _$StudentClassModelImpl>
    implements _$$StudentClassModelImplCopyWith<$Res> {
  __$$StudentClassModelImplCopyWithImpl(
    _$StudentClassModelImpl _value,
    $Res Function(_$StudentClassModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentClassModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentClassId = null,
    Object? studentId = null,
    Object? classId = null,
    Object? academicYearId = null,
    Object? status = null,
    Object? createdAt = null,
    Object? students = null,
    Object? classes = null,
  }) {
    return _then(
      _$StudentClassModelImpl(
        studentClassId:
            null == studentClassId
                ? _value.studentClassId
                : studentClassId // ignore: cast_nullable_to_non_nullable
                    as int,
        studentId:
            null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                    as String,
        classId:
            null == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                    as int,
        academicYearId:
            null == academicYearId
                ? _value.academicYearId
                : academicYearId // ignore: cast_nullable_to_non_nullable
                    as int,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as String,
        students:
            null == students
                ? _value.students
                : students // ignore: cast_nullable_to_non_nullable
                    as StudentModel,
        classes:
            null == classes
                ? _value.classes
                : classes // ignore: cast_nullable_to_non_nullable
                    as ClassModel,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$StudentClassModelImpl
    with DiagnosticableTreeMixin
    implements _StudentClassModel {
  const _$StudentClassModelImpl({
    required this.studentClassId,
    required this.studentId,
    required this.classId,
    required this.academicYearId,
    required this.status,
    required this.createdAt,
    required this.students,
    required this.classes,
  });

  factory _$StudentClassModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentClassModelImplFromJson(json);

  @override
  final int studentClassId;
  @override
  final String studentId;
  @override
  final int classId;
  @override
  final int academicYearId;
  @override
  final String status;
  @override
  final String createdAt;
  @override
  final StudentModel students;
  @override
  final ClassModel classes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StudentClassModel(studentClassId: $studentClassId, studentId: $studentId, classId: $classId, academicYearId: $academicYearId, status: $status, createdAt: $createdAt, students: $students, classes: $classes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StudentClassModel'))
      ..add(DiagnosticsProperty('studentClassId', studentClassId))
      ..add(DiagnosticsProperty('studentId', studentId))
      ..add(DiagnosticsProperty('classId', classId))
      ..add(DiagnosticsProperty('academicYearId', academicYearId))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('students', students))
      ..add(DiagnosticsProperty('classes', classes));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentClassModelImpl &&
            (identical(other.studentClassId, studentClassId) ||
                other.studentClassId == studentClassId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.academicYearId, academicYearId) ||
                other.academicYearId == academicYearId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.students, students) ||
                other.students == students) &&
            (identical(other.classes, classes) || other.classes == classes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    studentClassId,
    studentId,
    classId,
    academicYearId,
    status,
    createdAt,
    students,
    classes,
  );

  /// Create a copy of StudentClassModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentClassModelImplCopyWith<_$StudentClassModelImpl> get copyWith =>
      __$$StudentClassModelImplCopyWithImpl<_$StudentClassModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentClassModelImplToJson(this);
  }
}

abstract class _StudentClassModel implements StudentClassModel {
  const factory _StudentClassModel({
    required final int studentClassId,
    required final String studentId,
    required final int classId,
    required final int academicYearId,
    required final String status,
    required final String createdAt,
    required final StudentModel students,
    required final ClassModel classes,
  }) = _$StudentClassModelImpl;

  factory _StudentClassModel.fromJson(Map<String, dynamic> json) =
      _$StudentClassModelImpl.fromJson;

  @override
  int get studentClassId;
  @override
  String get studentId;
  @override
  int get classId;
  @override
  int get academicYearId;
  @override
  String get status;
  @override
  String get createdAt;
  @override
  StudentModel get students;
  @override
  ClassModel get classes;

  /// Create a copy of StudentClassModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentClassModelImplCopyWith<_$StudentClassModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
