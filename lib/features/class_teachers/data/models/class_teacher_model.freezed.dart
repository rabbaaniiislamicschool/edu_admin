// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_teacher_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassTeacherModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'class_teacher_id', includeToJson: false) int get classTeacherId;@JsonKey(name: 'class_id') int get classId;@JsonKey(name: 'teacher_id') String get teacherId;@JsonKey(name: 'academic_year_id') int get academicYearId;@JsonKey(name: 'assigned_date') String get assignedDate;
/// Create a copy of ClassTeacherModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherModelCopyWith<ClassTeacherModel> get copyWith => _$ClassTeacherModelCopyWithImpl<ClassTeacherModel>(this as ClassTeacherModel, _$identity);

  /// Serializes this ClassTeacherModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ClassTeacherModel'))
    ..add(DiagnosticsProperty('classTeacherId', classTeacherId))..add(DiagnosticsProperty('classId', classId))..add(DiagnosticsProperty('teacherId', teacherId))..add(DiagnosticsProperty('academicYearId', academicYearId))..add(DiagnosticsProperty('assignedDate', assignedDate));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherModel&&(identical(other.classTeacherId, classTeacherId) || other.classTeacherId == classTeacherId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.teacherId, teacherId) || other.teacherId == teacherId)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId)&&(identical(other.assignedDate, assignedDate) || other.assignedDate == assignedDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,classTeacherId,classId,teacherId,academicYearId,assignedDate);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ClassTeacherModel(classTeacherId: $classTeacherId, classId: $classId, teacherId: $teacherId, academicYearId: $academicYearId, assignedDate: $assignedDate)';
}


}

/// @nodoc
abstract mixin class $ClassTeacherModelCopyWith<$Res>  {
  factory $ClassTeacherModelCopyWith(ClassTeacherModel value, $Res Function(ClassTeacherModel) _then) = _$ClassTeacherModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'class_teacher_id', includeToJson: false) int classTeacherId,@JsonKey(name: 'class_id') int classId,@JsonKey(name: 'teacher_id') String teacherId,@JsonKey(name: 'academic_year_id') int academicYearId,@JsonKey(name: 'assigned_date') String assignedDate
});




}
/// @nodoc
class _$ClassTeacherModelCopyWithImpl<$Res>
    implements $ClassTeacherModelCopyWith<$Res> {
  _$ClassTeacherModelCopyWithImpl(this._self, this._then);

  final ClassTeacherModel _self;
  final $Res Function(ClassTeacherModel) _then;

/// Create a copy of ClassTeacherModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? classTeacherId = null,Object? classId = null,Object? teacherId = null,Object? academicYearId = null,Object? assignedDate = null,}) {
  return _then(_self.copyWith(
classTeacherId: null == classTeacherId ? _self.classTeacherId : classTeacherId // ignore: cast_nullable_to_non_nullable
as int,classId: null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as int,teacherId: null == teacherId ? _self.teacherId : teacherId // ignore: cast_nullable_to_non_nullable
as String,academicYearId: null == academicYearId ? _self.academicYearId : academicYearId // ignore: cast_nullable_to_non_nullable
as int,assignedDate: null == assignedDate ? _self.assignedDate : assignedDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ClassTeacherModel with DiagnosticableTreeMixin implements ClassTeacherModel {
  const _ClassTeacherModel({@JsonKey(name: 'class_teacher_id', includeToJson: false) required this.classTeacherId, @JsonKey(name: 'class_id') required this.classId, @JsonKey(name: 'teacher_id') required this.teacherId, @JsonKey(name: 'academic_year_id') required this.academicYearId, @JsonKey(name: 'assigned_date') required this.assignedDate});
  factory _ClassTeacherModel.fromJson(Map<String, dynamic> json) => _$ClassTeacherModelFromJson(json);

@override@JsonKey(name: 'class_teacher_id', includeToJson: false) final  int classTeacherId;
@override@JsonKey(name: 'class_id') final  int classId;
@override@JsonKey(name: 'teacher_id') final  String teacherId;
@override@JsonKey(name: 'academic_year_id') final  int academicYearId;
@override@JsonKey(name: 'assigned_date') final  String assignedDate;

/// Create a copy of ClassTeacherModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherModelCopyWith<_ClassTeacherModel> get copyWith => __$ClassTeacherModelCopyWithImpl<_ClassTeacherModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ClassTeacherModel'))
    ..add(DiagnosticsProperty('classTeacherId', classTeacherId))..add(DiagnosticsProperty('classId', classId))..add(DiagnosticsProperty('teacherId', teacherId))..add(DiagnosticsProperty('academicYearId', academicYearId))..add(DiagnosticsProperty('assignedDate', assignedDate));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherModel&&(identical(other.classTeacherId, classTeacherId) || other.classTeacherId == classTeacherId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.teacherId, teacherId) || other.teacherId == teacherId)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId)&&(identical(other.assignedDate, assignedDate) || other.assignedDate == assignedDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,classTeacherId,classId,teacherId,academicYearId,assignedDate);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ClassTeacherModel(classTeacherId: $classTeacherId, classId: $classId, teacherId: $teacherId, academicYearId: $academicYearId, assignedDate: $assignedDate)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherModelCopyWith<$Res> implements $ClassTeacherModelCopyWith<$Res> {
  factory _$ClassTeacherModelCopyWith(_ClassTeacherModel value, $Res Function(_ClassTeacherModel) _then) = __$ClassTeacherModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'class_teacher_id', includeToJson: false) int classTeacherId,@JsonKey(name: 'class_id') int classId,@JsonKey(name: 'teacher_id') String teacherId,@JsonKey(name: 'academic_year_id') int academicYearId,@JsonKey(name: 'assigned_date') String assignedDate
});




}
/// @nodoc
class __$ClassTeacherModelCopyWithImpl<$Res>
    implements _$ClassTeacherModelCopyWith<$Res> {
  __$ClassTeacherModelCopyWithImpl(this._self, this._then);

  final _ClassTeacherModel _self;
  final $Res Function(_ClassTeacherModel) _then;

/// Create a copy of ClassTeacherModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? classTeacherId = null,Object? classId = null,Object? teacherId = null,Object? academicYearId = null,Object? assignedDate = null,}) {
  return _then(_ClassTeacherModel(
classTeacherId: null == classTeacherId ? _self.classTeacherId : classTeacherId // ignore: cast_nullable_to_non_nullable
as int,classId: null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as int,teacherId: null == teacherId ? _self.teacherId : teacherId // ignore: cast_nullable_to_non_nullable
as String,academicYearId: null == academicYearId ? _self.academicYearId : academicYearId // ignore: cast_nullable_to_non_nullable
as int,assignedDate: null == assignedDate ? _self.assignedDate : assignedDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
