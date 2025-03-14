// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_teacher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassTeacher {

 int get classTeacherId; int get classId; String get teacherId; int get academicYearId; String get assignedDate;
/// Create a copy of ClassTeacher
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherCopyWith<ClassTeacher> get copyWith => _$ClassTeacherCopyWithImpl<ClassTeacher>(this as ClassTeacher, _$identity);

  /// Serializes this ClassTeacher to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacher&&(identical(other.classTeacherId, classTeacherId) || other.classTeacherId == classTeacherId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.teacherId, teacherId) || other.teacherId == teacherId)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId)&&(identical(other.assignedDate, assignedDate) || other.assignedDate == assignedDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,classTeacherId,classId,teacherId,academicYearId,assignedDate);

@override
String toString() {
  return 'ClassTeacher(classTeacherId: $classTeacherId, classId: $classId, teacherId: $teacherId, academicYearId: $academicYearId, assignedDate: $assignedDate)';
}


}

/// @nodoc
abstract mixin class $ClassTeacherCopyWith<$Res>  {
  factory $ClassTeacherCopyWith(ClassTeacher value, $Res Function(ClassTeacher) _then) = _$ClassTeacherCopyWithImpl;
@useResult
$Res call({
 int classTeacherId, int classId, String teacherId, int academicYearId, String assignedDate
});




}
/// @nodoc
class _$ClassTeacherCopyWithImpl<$Res>
    implements $ClassTeacherCopyWith<$Res> {
  _$ClassTeacherCopyWithImpl(this._self, this._then);

  final ClassTeacher _self;
  final $Res Function(ClassTeacher) _then;

/// Create a copy of ClassTeacher
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

class _ClassTeacher implements ClassTeacher {
   _ClassTeacher({required this.classTeacherId, required this.classId, required this.teacherId, required this.academicYearId, required this.assignedDate});
  factory _ClassTeacher.fromJson(Map<String, dynamic> json) => _$ClassTeacherFromJson(json);

@override final  int classTeacherId;
@override final  int classId;
@override final  String teacherId;
@override final  int academicYearId;
@override final  String assignedDate;

/// Create a copy of ClassTeacher
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherCopyWith<_ClassTeacher> get copyWith => __$ClassTeacherCopyWithImpl<_ClassTeacher>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacher&&(identical(other.classTeacherId, classTeacherId) || other.classTeacherId == classTeacherId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.teacherId, teacherId) || other.teacherId == teacherId)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId)&&(identical(other.assignedDate, assignedDate) || other.assignedDate == assignedDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,classTeacherId,classId,teacherId,academicYearId,assignedDate);

@override
String toString() {
  return 'ClassTeacher(classTeacherId: $classTeacherId, classId: $classId, teacherId: $teacherId, academicYearId: $academicYearId, assignedDate: $assignedDate)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherCopyWith<$Res> implements $ClassTeacherCopyWith<$Res> {
  factory _$ClassTeacherCopyWith(_ClassTeacher value, $Res Function(_ClassTeacher) _then) = __$ClassTeacherCopyWithImpl;
@override @useResult
$Res call({
 int classTeacherId, int classId, String teacherId, int academicYearId, String assignedDate
});




}
/// @nodoc
class __$ClassTeacherCopyWithImpl<$Res>
    implements _$ClassTeacherCopyWith<$Res> {
  __$ClassTeacherCopyWithImpl(this._self, this._then);

  final _ClassTeacher _self;
  final $Res Function(_ClassTeacher) _then;

/// Create a copy of ClassTeacher
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? classTeacherId = null,Object? classId = null,Object? teacherId = null,Object? academicYearId = null,Object? assignedDate = null,}) {
  return _then(_ClassTeacher(
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
