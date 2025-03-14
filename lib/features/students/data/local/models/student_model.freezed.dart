// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudentModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'student_id', includeToJson: false) String? get studentId;@JsonKey(name: 'student_number_id') String get studentNumberId;@JsonKey(name: 'guardian_name') String get guardianName;@JsonKey(name: 'guardian_phone') String get guardianPhone;@JsonKey(name: 'created_at', includeToJson: false) String? get createdAt;@JsonKey(name: 'updated_at', includeIfNull: false) String? get updatedAt;@JsonKey(name: 'student_national_id') String? get studentNationalId;@JsonKey(name: 'school_id') int get schoolId; String? get status;
/// Create a copy of StudentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentModelCopyWith<StudentModel> get copyWith => _$StudentModelCopyWithImpl<StudentModel>(this as StudentModel, _$identity);

  /// Serializes this StudentModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentModel'))
    ..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('studentNumberId', studentNumberId))..add(DiagnosticsProperty('guardianName', guardianName))..add(DiagnosticsProperty('guardianPhone', guardianPhone))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('studentNationalId', studentNationalId))..add(DiagnosticsProperty('schoolId', schoolId))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentModel&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.studentNumberId, studentNumberId) || other.studentNumberId == studentNumberId)&&(identical(other.guardianName, guardianName) || other.guardianName == guardianName)&&(identical(other.guardianPhone, guardianPhone) || other.guardianPhone == guardianPhone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.studentNationalId, studentNationalId) || other.studentNationalId == studentNationalId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentId,studentNumberId,guardianName,guardianPhone,createdAt,updatedAt,studentNationalId,schoolId,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentModel(studentId: $studentId, studentNumberId: $studentNumberId, guardianName: $guardianName, guardianPhone: $guardianPhone, createdAt: $createdAt, updatedAt: $updatedAt, studentNationalId: $studentNationalId, schoolId: $schoolId, status: $status)';
}


}

/// @nodoc
abstract mixin class $StudentModelCopyWith<$Res>  {
  factory $StudentModelCopyWith(StudentModel value, $Res Function(StudentModel) _then) = _$StudentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id', includeToJson: false) String? studentId,@JsonKey(name: 'student_number_id') String studentNumberId,@JsonKey(name: 'guardian_name') String guardianName,@JsonKey(name: 'guardian_phone') String guardianPhone,@JsonKey(name: 'created_at', includeToJson: false) String? createdAt,@JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt,@JsonKey(name: 'student_national_id') String? studentNationalId,@JsonKey(name: 'school_id') int schoolId, String? status
});




}
/// @nodoc
class _$StudentModelCopyWithImpl<$Res>
    implements $StudentModelCopyWith<$Res> {
  _$StudentModelCopyWithImpl(this._self, this._then);

  final StudentModel _self;
  final $Res Function(StudentModel) _then;

/// Create a copy of StudentModel
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

class _StudentModel with DiagnosticableTreeMixin implements StudentModel {
  const _StudentModel({@JsonKey(name: 'student_id', includeToJson: false) this.studentId, @JsonKey(name: 'student_number_id') required this.studentNumberId, @JsonKey(name: 'guardian_name') required this.guardianName, @JsonKey(name: 'guardian_phone') required this.guardianPhone, @JsonKey(name: 'created_at', includeToJson: false) this.createdAt, @JsonKey(name: 'updated_at', includeIfNull: false) this.updatedAt, @JsonKey(name: 'student_national_id') this.studentNationalId, @JsonKey(name: 'school_id') required this.schoolId, this.status});
  factory _StudentModel.fromJson(Map<String, dynamic> json) => _$StudentModelFromJson(json);

@override@JsonKey(name: 'student_id', includeToJson: false) final  String? studentId;
@override@JsonKey(name: 'student_number_id') final  String studentNumberId;
@override@JsonKey(name: 'guardian_name') final  String guardianName;
@override@JsonKey(name: 'guardian_phone') final  String guardianPhone;
@override@JsonKey(name: 'created_at', includeToJson: false) final  String? createdAt;
@override@JsonKey(name: 'updated_at', includeIfNull: false) final  String? updatedAt;
@override@JsonKey(name: 'student_national_id') final  String? studentNationalId;
@override@JsonKey(name: 'school_id') final  int schoolId;
@override final  String? status;

/// Create a copy of StudentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentModelCopyWith<_StudentModel> get copyWith => __$StudentModelCopyWithImpl<_StudentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentModel'))
    ..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('studentNumberId', studentNumberId))..add(DiagnosticsProperty('guardianName', guardianName))..add(DiagnosticsProperty('guardianPhone', guardianPhone))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('studentNationalId', studentNationalId))..add(DiagnosticsProperty('schoolId', schoolId))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentModel&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.studentNumberId, studentNumberId) || other.studentNumberId == studentNumberId)&&(identical(other.guardianName, guardianName) || other.guardianName == guardianName)&&(identical(other.guardianPhone, guardianPhone) || other.guardianPhone == guardianPhone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.studentNationalId, studentNationalId) || other.studentNationalId == studentNationalId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentId,studentNumberId,guardianName,guardianPhone,createdAt,updatedAt,studentNationalId,schoolId,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentModel(studentId: $studentId, studentNumberId: $studentNumberId, guardianName: $guardianName, guardianPhone: $guardianPhone, createdAt: $createdAt, updatedAt: $updatedAt, studentNationalId: $studentNationalId, schoolId: $schoolId, status: $status)';
}


}

/// @nodoc
abstract mixin class _$StudentModelCopyWith<$Res> implements $StudentModelCopyWith<$Res> {
  factory _$StudentModelCopyWith(_StudentModel value, $Res Function(_StudentModel) _then) = __$StudentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id', includeToJson: false) String? studentId,@JsonKey(name: 'student_number_id') String studentNumberId,@JsonKey(name: 'guardian_name') String guardianName,@JsonKey(name: 'guardian_phone') String guardianPhone,@JsonKey(name: 'created_at', includeToJson: false) String? createdAt,@JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt,@JsonKey(name: 'student_national_id') String? studentNationalId,@JsonKey(name: 'school_id') int schoolId, String? status
});




}
/// @nodoc
class __$StudentModelCopyWithImpl<$Res>
    implements _$StudentModelCopyWith<$Res> {
  __$StudentModelCopyWithImpl(this._self, this._then);

  final _StudentModel _self;
  final $Res Function(_StudentModel) _then;

/// Create a copy of StudentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = freezed,Object? studentNumberId = null,Object? guardianName = null,Object? guardianPhone = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? studentNationalId = freezed,Object? schoolId = null,Object? status = freezed,}) {
  return _then(_StudentModel(
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
