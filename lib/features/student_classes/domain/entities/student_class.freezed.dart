// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudentClass {

 int get studentClassId; String get studentId; int get classId; int get academicYearId; String get status; String get createdAt;
/// Create a copy of StudentClass
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentClassCopyWith<StudentClass> get copyWith => _$StudentClassCopyWithImpl<StudentClass>(this as StudentClass, _$identity);

  /// Serializes this StudentClass to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentClass&&(identical(other.studentClassId, studentClassId) || other.studentClassId == studentClassId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentClassId,studentId,classId,academicYearId,status,createdAt);

@override
String toString() {
  return 'StudentClass(studentClassId: $studentClassId, studentId: $studentId, classId: $classId, academicYearId: $academicYearId, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $StudentClassCopyWith<$Res>  {
  factory $StudentClassCopyWith(StudentClass value, $Res Function(StudentClass) _then) = _$StudentClassCopyWithImpl;
@useResult
$Res call({
 int studentClassId, String studentId, int classId, int academicYearId, String status, String createdAt
});




}
/// @nodoc
class _$StudentClassCopyWithImpl<$Res>
    implements $StudentClassCopyWith<$Res> {
  _$StudentClassCopyWithImpl(this._self, this._then);

  final StudentClass _self;
  final $Res Function(StudentClass) _then;

/// Create a copy of StudentClass
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

class _StudentClass implements StudentClass {
   _StudentClass({required this.studentClassId, required this.studentId, required this.classId, required this.academicYearId, required this.status, required this.createdAt});
  factory _StudentClass.fromJson(Map<String, dynamic> json) => _$StudentClassFromJson(json);

@override final  int studentClassId;
@override final  String studentId;
@override final  int classId;
@override final  int academicYearId;
@override final  String status;
@override final  String createdAt;

/// Create a copy of StudentClass
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentClassCopyWith<_StudentClass> get copyWith => __$StudentClassCopyWithImpl<_StudentClass>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentClassToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentClass&&(identical(other.studentClassId, studentClassId) || other.studentClassId == studentClassId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentClassId,studentId,classId,academicYearId,status,createdAt);

@override
String toString() {
  return 'StudentClass(studentClassId: $studentClassId, studentId: $studentId, classId: $classId, academicYearId: $academicYearId, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$StudentClassCopyWith<$Res> implements $StudentClassCopyWith<$Res> {
  factory _$StudentClassCopyWith(_StudentClass value, $Res Function(_StudentClass) _then) = __$StudentClassCopyWithImpl;
@override @useResult
$Res call({
 int studentClassId, String studentId, int classId, int academicYearId, String status, String createdAt
});




}
/// @nodoc
class __$StudentClassCopyWithImpl<$Res>
    implements _$StudentClassCopyWith<$Res> {
  __$StudentClassCopyWithImpl(this._self, this._then);

  final _StudentClass _self;
  final $Res Function(_StudentClass) _then;

/// Create a copy of StudentClass
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentClassId = null,Object? studentId = null,Object? classId = null,Object? academicYearId = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_StudentClass(
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
