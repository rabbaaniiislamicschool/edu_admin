// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Student {

 String? get studentId; String get studentNumberId; String get guardianName; String get guardianPhone; String? get createdAt; String? get updatedAt; String? get studentNationalId; int get schoolId; String? get status;
/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentCopyWith<Student> get copyWith => _$StudentCopyWithImpl<Student>(this as Student, _$identity);

  /// Serializes this Student to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Student&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.studentNumberId, studentNumberId) || other.studentNumberId == studentNumberId)&&(identical(other.guardianName, guardianName) || other.guardianName == guardianName)&&(identical(other.guardianPhone, guardianPhone) || other.guardianPhone == guardianPhone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.studentNationalId, studentNationalId) || other.studentNationalId == studentNationalId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentId,studentNumberId,guardianName,guardianPhone,createdAt,updatedAt,studentNationalId,schoolId,status);

@override
String toString() {
  return 'Student(studentId: $studentId, studentNumberId: $studentNumberId, guardianName: $guardianName, guardianPhone: $guardianPhone, createdAt: $createdAt, updatedAt: $updatedAt, studentNationalId: $studentNationalId, schoolId: $schoolId, status: $status)';
}


}

/// @nodoc
abstract mixin class $StudentCopyWith<$Res>  {
  factory $StudentCopyWith(Student value, $Res Function(Student) _then) = _$StudentCopyWithImpl;
@useResult
$Res call({
 String? studentId, String studentNumberId, String guardianName, String guardianPhone, String? createdAt, String? updatedAt, String? studentNationalId, int schoolId, String? status
});




}
/// @nodoc
class _$StudentCopyWithImpl<$Res>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._self, this._then);

  final Student _self;
  final $Res Function(Student) _then;

/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = freezed,Object? studentNumberId = null,Object? guardianName = null,Object? guardianPhone = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? studentNationalId = freezed,Object? schoolId = null,Object? status = freezed,}) {
  return _then(_self.copyWith(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,studentNumberId: null == studentNumberId ? _self.studentNumberId : studentNumberId // ignore: cast_nullable_to_non_nullable
as String,guardianName: null == guardianName ? _self.guardianName : guardianName // ignore: cast_nullable_to_non_nullable
as String,guardianPhone: null == guardianPhone ? _self.guardianPhone : guardianPhone // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,studentNationalId: freezed == studentNationalId ? _self.studentNationalId : studentNationalId // ignore: cast_nullable_to_non_nullable
as String?,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Student implements Student {
   _Student({this.studentId, required this.studentNumberId, required this.guardianName, required this.guardianPhone, this.createdAt, this.updatedAt, this.studentNationalId, required this.schoolId, this.status});
  factory _Student.fromJson(Map<String, dynamic> json) => _$StudentFromJson(json);

@override final  String? studentId;
@override final  String studentNumberId;
@override final  String guardianName;
@override final  String guardianPhone;
@override final  String? createdAt;
@override final  String? updatedAt;
@override final  String? studentNationalId;
@override final  int schoolId;
@override final  String? status;

/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentCopyWith<_Student> get copyWith => __$StudentCopyWithImpl<_Student>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Student&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.studentNumberId, studentNumberId) || other.studentNumberId == studentNumberId)&&(identical(other.guardianName, guardianName) || other.guardianName == guardianName)&&(identical(other.guardianPhone, guardianPhone) || other.guardianPhone == guardianPhone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.studentNationalId, studentNationalId) || other.studentNationalId == studentNationalId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentId,studentNumberId,guardianName,guardianPhone,createdAt,updatedAt,studentNationalId,schoolId,status);

@override
String toString() {
  return 'Student(studentId: $studentId, studentNumberId: $studentNumberId, guardianName: $guardianName, guardianPhone: $guardianPhone, createdAt: $createdAt, updatedAt: $updatedAt, studentNationalId: $studentNationalId, schoolId: $schoolId, status: $status)';
}


}

/// @nodoc
abstract mixin class _$StudentCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$StudentCopyWith(_Student value, $Res Function(_Student) _then) = __$StudentCopyWithImpl;
@override @useResult
$Res call({
 String? studentId, String studentNumberId, String guardianName, String guardianPhone, String? createdAt, String? updatedAt, String? studentNationalId, int schoolId, String? status
});




}
/// @nodoc
class __$StudentCopyWithImpl<$Res>
    implements _$StudentCopyWith<$Res> {
  __$StudentCopyWithImpl(this._self, this._then);

  final _Student _self;
  final $Res Function(_Student) _then;

/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = freezed,Object? studentNumberId = null,Object? guardianName = null,Object? guardianPhone = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? studentNationalId = freezed,Object? schoolId = null,Object? status = freezed,}) {
  return _then(_Student(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,studentNumberId: null == studentNumberId ? _self.studentNumberId : studentNumberId // ignore: cast_nullable_to_non_nullable
as String,guardianName: null == guardianName ? _self.guardianName : guardianName // ignore: cast_nullable_to_non_nullable
as String,guardianPhone: null == guardianPhone ? _self.guardianPhone : guardianPhone // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,studentNationalId: freezed == studentNationalId ? _self.studentNationalId : studentNationalId // ignore: cast_nullable_to_non_nullable
as String?,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
