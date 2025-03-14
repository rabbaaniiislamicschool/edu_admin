// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_class_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudentClassModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'student_class_id', includeToJson: false) int get studentClassId;@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'class_id') int get classId;@JsonKey(name: 'academic_year_id') int get academicYearId;@JsonKey(name: 'status') String get status;@JsonKey(name: 'created_at', includeToJson: false) String get createdAt;
/// Create a copy of StudentClassModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentClassModelCopyWith<StudentClassModel> get copyWith => _$StudentClassModelCopyWithImpl<StudentClassModel>(this as StudentClassModel, _$identity);

  /// Serializes this StudentClassModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentClassModel'))
    ..add(DiagnosticsProperty('studentClassId', studentClassId))..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('classId', classId))..add(DiagnosticsProperty('academicYearId', academicYearId))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('createdAt', createdAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentClassModel&&(identical(other.studentClassId, studentClassId) || other.studentClassId == studentClassId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentClassId,studentId,classId,academicYearId,status,createdAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentClassModel(studentClassId: $studentClassId, studentId: $studentId, classId: $classId, academicYearId: $academicYearId, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $StudentClassModelCopyWith<$Res>  {
  factory $StudentClassModelCopyWith(StudentClassModel value, $Res Function(StudentClassModel) _then) = _$StudentClassModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_class_id', includeToJson: false) int studentClassId,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'class_id') int classId,@JsonKey(name: 'academic_year_id') int academicYearId,@JsonKey(name: 'status') String status,@JsonKey(name: 'created_at', includeToJson: false) String createdAt
});




}
/// @nodoc
class _$StudentClassModelCopyWithImpl<$Res>
    implements $StudentClassModelCopyWith<$Res> {
  _$StudentClassModelCopyWithImpl(this._self, this._then);

  final StudentClassModel _self;
  final $Res Function(StudentClassModel) _then;

/// Create a copy of StudentClassModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentClassId = null,Object? studentId = null,Object? classId = null,Object? academicYearId = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
studentClassId: null == studentClassId ? _self.studentClassId : studentClassId // ignore: cast_nullable_to_non_nullable
as int,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,classId: null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as int,academicYearId: null == academicYearId ? _self.academicYearId : academicYearId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _StudentClassModel with DiagnosticableTreeMixin implements StudentClassModel {
  const _StudentClassModel({@JsonKey(name: 'student_class_id', includeToJson: false) required this.studentClassId, @JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'class_id') required this.classId, @JsonKey(name: 'academic_year_id') required this.academicYearId, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'created_at', includeToJson: false) required this.createdAt});
  factory _StudentClassModel.fromJson(Map<String, dynamic> json) => _$StudentClassModelFromJson(json);

@override@JsonKey(name: 'student_class_id', includeToJson: false) final  int studentClassId;
@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'class_id') final  int classId;
@override@JsonKey(name: 'academic_year_id') final  int academicYearId;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'created_at', includeToJson: false) final  String createdAt;

/// Create a copy of StudentClassModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentClassModelCopyWith<_StudentClassModel> get copyWith => __$StudentClassModelCopyWithImpl<_StudentClassModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentClassModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentClassModel'))
    ..add(DiagnosticsProperty('studentClassId', studentClassId))..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('classId', classId))..add(DiagnosticsProperty('academicYearId', academicYearId))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('createdAt', createdAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentClassModel&&(identical(other.studentClassId, studentClassId) || other.studentClassId == studentClassId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentClassId,studentId,classId,academicYearId,status,createdAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentClassModel(studentClassId: $studentClassId, studentId: $studentId, classId: $classId, academicYearId: $academicYearId, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$StudentClassModelCopyWith<$Res> implements $StudentClassModelCopyWith<$Res> {
  factory _$StudentClassModelCopyWith(_StudentClassModel value, $Res Function(_StudentClassModel) _then) = __$StudentClassModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_class_id', includeToJson: false) int studentClassId,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'class_id') int classId,@JsonKey(name: 'academic_year_id') int academicYearId,@JsonKey(name: 'status') String status,@JsonKey(name: 'created_at', includeToJson: false) String createdAt
});




}
/// @nodoc
class __$StudentClassModelCopyWithImpl<$Res>
    implements _$StudentClassModelCopyWith<$Res> {
  __$StudentClassModelCopyWithImpl(this._self, this._then);

  final _StudentClassModel _self;
  final $Res Function(_StudentClassModel) _then;

/// Create a copy of StudentClassModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentClassId = null,Object? studentId = null,Object? classId = null,Object? academicYearId = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_StudentClassModel(
studentClassId: null == studentClassId ? _self.studentClassId : studentClassId // ignore: cast_nullable_to_non_nullable
as int,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,classId: null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as int,academicYearId: null == academicYearId ? _self.academicYearId : academicYearId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
