// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ClassModel _$ClassModelFromJson(Map<String, dynamic> json) {
  return _ClassModel.fromJson(json);
}

/// @nodoc
mixin _$ClassModel {
  int get schoolId => throw _privateConstructorUsedError;
  int get classId => throw _privateConstructorUsedError;
  String get className => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get roomId => throw _privateConstructorUsedError;

  /// Serializes this ClassModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassModelCopyWith<ClassModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassModelCopyWith<$Res> {
  factory $ClassModelCopyWith(
    ClassModel value,
    $Res Function(ClassModel) then,
  ) = _$ClassModelCopyWithImpl<$Res, ClassModel>;
  @useResult
  $Res call({
    int schoolId,
    int classId,
    String className,
    String createdAt,
    String? description,
    int? roomId,
  });
}

/// @nodoc
class _$ClassModelCopyWithImpl<$Res, $Val extends ClassModel>
    implements $ClassModelCopyWith<$Res> {
  _$ClassModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
    Object? classId = null,
    Object? className = null,
    Object? createdAt = null,
    Object? description = freezed,
    Object? roomId = freezed,
  }) {
    return _then(
      _value.copyWith(
            schoolId:
                null == schoolId
                    ? _value.schoolId
                    : schoolId // ignore: cast_nullable_to_non_nullable
                        as int,
            classId:
                null == classId
                    ? _value.classId
                    : classId // ignore: cast_nullable_to_non_nullable
                        as int,
            className:
                null == className
                    ? _value.className
                    : className // ignore: cast_nullable_to_non_nullable
                        as String,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
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
abstract class _$$ClassModelImplCopyWith<$Res>
    implements $ClassModelCopyWith<$Res> {
  factory _$$ClassModelImplCopyWith(
    _$ClassModelImpl value,
    $Res Function(_$ClassModelImpl) then,
  ) = __$$ClassModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int schoolId,
    int classId,
    String className,
    String createdAt,
    String? description,
    int? roomId,
  });
}

/// @nodoc
class __$$ClassModelImplCopyWithImpl<$Res>
    extends _$ClassModelCopyWithImpl<$Res, _$ClassModelImpl>
    implements _$$ClassModelImplCopyWith<$Res> {
  __$$ClassModelImplCopyWithImpl(
    _$ClassModelImpl _value,
    $Res Function(_$ClassModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClassModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
    Object? classId = null,
    Object? className = null,
    Object? createdAt = null,
    Object? description = freezed,
    Object? roomId = freezed,
  }) {
    return _then(
      _$ClassModelImpl(
        schoolId:
            null == schoolId
                ? _value.schoolId
                : schoolId // ignore: cast_nullable_to_non_nullable
                    as int,
        classId:
            null == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                    as int,
        className:
            null == className
                ? _value.className
                : className // ignore: cast_nullable_to_non_nullable
                    as String,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
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

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ClassModelImpl with DiagnosticableTreeMixin implements _ClassModel {
  const _$ClassModelImpl({
    required this.schoolId,
    required this.classId,
    required this.className,
    required this.createdAt,
    this.description,
    this.roomId,
  });

  factory _$ClassModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassModelImplFromJson(json);

  @override
  final int schoolId;
  @override
  final int classId;
  @override
  final String className;
  @override
  final String createdAt;
  @override
  final String? description;
  @override
  final int? roomId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClassModel(schoolId: $schoolId, classId: $classId, className: $className, createdAt: $createdAt, description: $description, roomId: $roomId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClassModel'))
      ..add(DiagnosticsProperty('schoolId', schoolId))
      ..add(DiagnosticsProperty('classId', classId))
      ..add(DiagnosticsProperty('className', className))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('roomId', roomId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassModelImpl &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    schoolId,
    classId,
    className,
    createdAt,
    description,
    roomId,
  );

  /// Create a copy of ClassModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassModelImplCopyWith<_$ClassModelImpl> get copyWith =>
      __$$ClassModelImplCopyWithImpl<_$ClassModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassModelImplToJson(this);
  }
}

abstract class _ClassModel implements ClassModel {
  const factory _ClassModel({
    required final int schoolId,
    required final int classId,
    required final String className,
    required final String createdAt,
    final String? description,
    final int? roomId,
  }) = _$ClassModelImpl;

  factory _ClassModel.fromJson(Map<String, dynamic> json) =
      _$ClassModelImpl.fromJson;

  @override
  int get schoolId;
  @override
  int get classId;
  @override
  String get className;
  @override
  String get createdAt;
  @override
  String? get description;
  @override
  int? get roomId;

  /// Create a copy of ClassModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassModelImplCopyWith<_$ClassModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
