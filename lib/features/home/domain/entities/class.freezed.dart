// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Class {
  int get classId => throw _privateConstructorUsedError;
  int get schoolId => throw _privateConstructorUsedError;
  String get className => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  int? get roomId => throw _privateConstructorUsedError;

  /// Create a copy of Class
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassCopyWith<Class> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassCopyWith<$Res> {
  factory $ClassCopyWith(Class value, $Res Function(Class) then) =
      _$ClassCopyWithImpl<$Res, Class>;
  @useResult
  $Res call({
    int classId,
    int schoolId,
    String className,
    String? description,
    String createdAt,
    int? roomId,
  });
}

/// @nodoc
class _$ClassCopyWithImpl<$Res, $Val extends Class>
    implements $ClassCopyWith<$Res> {
  _$ClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Class
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
    Object? schoolId = null,
    Object? className = null,
    Object? description = freezed,
    Object? createdAt = null,
    Object? roomId = freezed,
  }) {
    return _then(
      _value.copyWith(
            classId:
                null == classId
                    ? _value.classId
                    : classId // ignore: cast_nullable_to_non_nullable
                        as int,
            schoolId:
                null == schoolId
                    ? _value.schoolId
                    : schoolId // ignore: cast_nullable_to_non_nullable
                        as int,
            className:
                null == className
                    ? _value.className
                    : className // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as String,
            roomId:
                freezed == roomId
                    ? _value.roomId
                    : roomId // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ClassImplCopyWith<$Res> implements $ClassCopyWith<$Res> {
  factory _$$ClassImplCopyWith(
    _$ClassImpl value,
    $Res Function(_$ClassImpl) then,
  ) = __$$ClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int classId,
    int schoolId,
    String className,
    String? description,
    String createdAt,
    int? roomId,
  });
}

/// @nodoc
class __$$ClassImplCopyWithImpl<$Res>
    extends _$ClassCopyWithImpl<$Res, _$ClassImpl>
    implements _$$ClassImplCopyWith<$Res> {
  __$$ClassImplCopyWithImpl(
    _$ClassImpl _value,
    $Res Function(_$ClassImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Class
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
    Object? schoolId = null,
    Object? className = null,
    Object? description = freezed,
    Object? createdAt = null,
    Object? roomId = freezed,
  }) {
    return _then(
      _$ClassImpl(
        classId:
            null == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                    as int,
        schoolId:
            null == schoolId
                ? _value.schoolId
                : schoolId // ignore: cast_nullable_to_non_nullable
                    as int,
        className:
            null == className
                ? _value.className
                : className // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as String,
        roomId:
            freezed == roomId
                ? _value.roomId
                : roomId // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc

class _$ClassImpl with DiagnosticableTreeMixin implements _Class {
  const _$ClassImpl({
    required this.classId,
    required this.schoolId,
    required this.className,
    this.description,
    required this.createdAt,
    this.roomId,
  });

  @override
  final int classId;
  @override
  final int schoolId;
  @override
  final String className;
  @override
  final String? description;
  @override
  final String createdAt;
  @override
  final int? roomId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Class(classId: $classId, schoolId: $schoolId, className: $className, description: $description, createdAt: $createdAt, roomId: $roomId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Class'))
      ..add(DiagnosticsProperty('classId', classId))
      ..add(DiagnosticsProperty('schoolId', schoolId))
      ..add(DiagnosticsProperty('className', className))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('roomId', roomId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassImpl &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    classId,
    schoolId,
    className,
    description,
    createdAt,
    roomId,
  );

  /// Create a copy of Class
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassImplCopyWith<_$ClassImpl> get copyWith =>
      __$$ClassImplCopyWithImpl<_$ClassImpl>(this, _$identity);
}

abstract class _Class implements Class {
  const factory _Class({
    required final int classId,
    required final int schoolId,
    required final String className,
    final String? description,
    required final String createdAt,
    final int? roomId,
  }) = _$ClassImpl;

  @override
  int get classId;
  @override
  int get schoolId;
  @override
  String get className;
  @override
  String? get description;
  @override
  String get createdAt;
  @override
  int? get roomId;

  /// Create a copy of Class
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassImplCopyWith<_$ClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
