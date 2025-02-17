// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StudentClass {
  int get studentClassId => throw _privateConstructorUsedError;
  String get studentId => throw _privateConstructorUsedError;
  int get classId => throw _privateConstructorUsedError;
  int get academicYearId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  Student get student => throw _privateConstructorUsedError;
  Class get classes => throw _privateConstructorUsedError;

  /// Create a copy of StudentClass
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentClassCopyWith<StudentClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentClassCopyWith<$Res> {
  factory $StudentClassCopyWith(
    StudentClass value,
    $Res Function(StudentClass) then,
  ) = _$StudentClassCopyWithImpl<$Res, StudentClass>;
  @useResult
  $Res call({
    int studentClassId,
    String studentId,
    int classId,
    int academicYearId,
    String status,
    String createdAt,
    Student student,
    Class classes,
  });

  $StudentCopyWith<$Res> get student;
  $ClassCopyWith<$Res> get classes;
}

/// @nodoc
class _$StudentClassCopyWithImpl<$Res, $Val extends StudentClass>
    implements $StudentClassCopyWith<$Res> {
  _$StudentClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentClass
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
    Object? student = null,
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
            student:
                null == student
                    ? _value.student
                    : student // ignore: cast_nullable_to_non_nullable
                        as Student,
            classes:
                null == classes
                    ? _value.classes
                    : classes // ignore: cast_nullable_to_non_nullable
                        as Class,
          )
          as $Val,
    );
  }

  /// Create a copy of StudentClass
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentCopyWith<$Res> get student {
    return $StudentCopyWith<$Res>(_value.student, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }

  /// Create a copy of StudentClass
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassCopyWith<$Res> get classes {
    return $ClassCopyWith<$Res>(_value.classes, (value) {
      return _then(_value.copyWith(classes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentClassImplCopyWith<$Res>
    implements $StudentClassCopyWith<$Res> {
  factory _$$StudentClassImplCopyWith(
    _$StudentClassImpl value,
    $Res Function(_$StudentClassImpl) then,
  ) = __$$StudentClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int studentClassId,
    String studentId,
    int classId,
    int academicYearId,
    String status,
    String createdAt,
    Student student,
    Class classes,
  });

  @override
  $StudentCopyWith<$Res> get student;
  @override
  $ClassCopyWith<$Res> get classes;
}

/// @nodoc
class __$$StudentClassImplCopyWithImpl<$Res>
    extends _$StudentClassCopyWithImpl<$Res, _$StudentClassImpl>
    implements _$$StudentClassImplCopyWith<$Res> {
  __$$StudentClassImplCopyWithImpl(
    _$StudentClassImpl _value,
    $Res Function(_$StudentClassImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentClass
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
    Object? student = null,
    Object? classes = null,
  }) {
    return _then(
      _$StudentClassImpl(
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
        student:
            null == student
                ? _value.student
                : student // ignore: cast_nullable_to_non_nullable
                    as Student,
        classes:
            null == classes
                ? _value.classes
                : classes // ignore: cast_nullable_to_non_nullable
                    as Class,
      ),
    );
  }
}

/// @nodoc

class _$StudentClassImpl with DiagnosticableTreeMixin implements _StudentClass {
  const _$StudentClassImpl({
    required this.studentClassId,
    required this.studentId,
    required this.classId,
    required this.academicYearId,
    required this.status,
    required this.createdAt,
    required this.student,
    required this.classes,
  });

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
  final Student student;
  @override
  final Class classes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StudentClass(studentClassId: $studentClassId, studentId: $studentId, classId: $classId, academicYearId: $academicYearId, status: $status, createdAt: $createdAt, student: $student, classes: $classes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StudentClass'))
      ..add(DiagnosticsProperty('studentClassId', studentClassId))
      ..add(DiagnosticsProperty('studentId', studentId))
      ..add(DiagnosticsProperty('classId', classId))
      ..add(DiagnosticsProperty('academicYearId', academicYearId))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('student', student))
      ..add(DiagnosticsProperty('classes', classes));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentClassImpl &&
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
            (identical(other.student, student) || other.student == student) &&
            (identical(other.classes, classes) || other.classes == classes));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    studentClassId,
    studentId,
    classId,
    academicYearId,
    status,
    createdAt,
    student,
    classes,
  );

  /// Create a copy of StudentClass
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentClassImplCopyWith<_$StudentClassImpl> get copyWith =>
      __$$StudentClassImplCopyWithImpl<_$StudentClassImpl>(this, _$identity);
}

abstract class _StudentClass implements StudentClass {
  const factory _StudentClass({
    required final int studentClassId,
    required final String studentId,
    required final int classId,
    required final int academicYearId,
    required final String status,
    required final String createdAt,
    required final Student student,
    required final Class classes,
  }) = _$StudentClassImpl;

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
  Student get student;
  @override
  Class get classes;

  /// Create a copy of StudentClass
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentClassImplCopyWith<_$StudentClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
