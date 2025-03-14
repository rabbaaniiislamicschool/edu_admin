// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmployeeModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'employee_id', includeToJson: false) String? get employeeId;@JsonKey(name: 'employee_number_id') String get employeeNumberId;@JsonKey(name: 'division_id') int? get divisionId;@JsonKey(name: 'employee_name') String get employeeName;@JsonKey(name: 'education_level') String? get educationLevel;@JsonKey(name: 'hired_date') String? get hiredDate;@JsonKey(name: 'leave_date', includeIfNull: false) String? get leaveDate;@JsonKey(name: 'employment_status') String get employmentStatus; String? get position;@JsonKey(name: 'is_teaching') bool get isTeaching;@JsonKey(name: 'created_at', includeToJson: false) String? get createdAt;@JsonKey(name: 'update_at', includeIfNull: false) String? get updateAt;
/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeModelCopyWith<EmployeeModel> get copyWith => _$EmployeeModelCopyWithImpl<EmployeeModel>(this as EmployeeModel, _$identity);

  /// Serializes this EmployeeModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmployeeModel'))
    ..add(DiagnosticsProperty('employeeId', employeeId))..add(DiagnosticsProperty('employeeNumberId', employeeNumberId))..add(DiagnosticsProperty('divisionId', divisionId))..add(DiagnosticsProperty('employeeName', employeeName))..add(DiagnosticsProperty('educationLevel', educationLevel))..add(DiagnosticsProperty('hiredDate', hiredDate))..add(DiagnosticsProperty('leaveDate', leaveDate))..add(DiagnosticsProperty('employmentStatus', employmentStatus))..add(DiagnosticsProperty('position', position))..add(DiagnosticsProperty('isTeaching', isTeaching))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updateAt', updateAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeModel&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeNumberId, employeeNumberId) || other.employeeNumberId == employeeNumberId)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.educationLevel, educationLevel) || other.educationLevel == educationLevel)&&(identical(other.hiredDate, hiredDate) || other.hiredDate == hiredDate)&&(identical(other.leaveDate, leaveDate) || other.leaveDate == leaveDate)&&(identical(other.employmentStatus, employmentStatus) || other.employmentStatus == employmentStatus)&&(identical(other.position, position) || other.position == position)&&(identical(other.isTeaching, isTeaching) || other.isTeaching == isTeaching)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updateAt, updateAt) || other.updateAt == updateAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employeeId,employeeNumberId,divisionId,employeeName,educationLevel,hiredDate,leaveDate,employmentStatus,position,isTeaching,createdAt,updateAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmployeeModel(employeeId: $employeeId, employeeNumberId: $employeeNumberId, divisionId: $divisionId, employeeName: $employeeName, educationLevel: $educationLevel, hiredDate: $hiredDate, leaveDate: $leaveDate, employmentStatus: $employmentStatus, position: $position, isTeaching: $isTeaching, createdAt: $createdAt, updateAt: $updateAt)';
}


}

/// @nodoc
abstract mixin class $EmployeeModelCopyWith<$Res>  {
  factory $EmployeeModelCopyWith(EmployeeModel value, $Res Function(EmployeeModel) _then) = _$EmployeeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'employee_id', includeToJson: false) String? employeeId,@JsonKey(name: 'employee_number_id') String employeeNumberId,@JsonKey(name: 'division_id') int? divisionId,@JsonKey(name: 'employee_name') String employeeName,@JsonKey(name: 'education_level') String? educationLevel,@JsonKey(name: 'hired_date') String? hiredDate,@JsonKey(name: 'leave_date', includeIfNull: false) String? leaveDate,@JsonKey(name: 'employment_status') String employmentStatus, String? position,@JsonKey(name: 'is_teaching') bool isTeaching,@JsonKey(name: 'created_at', includeToJson: false) String? createdAt,@JsonKey(name: 'update_at', includeIfNull: false) String? updateAt
});




}
/// @nodoc
class _$EmployeeModelCopyWithImpl<$Res>
    implements $EmployeeModelCopyWith<$Res> {
  _$EmployeeModelCopyWithImpl(this._self, this._then);

  final EmployeeModel _self;
  final $Res Function(EmployeeModel) _then;

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? employeeId = freezed,Object? employeeNumberId = null,Object? divisionId = freezed,Object? employeeName = null,Object? educationLevel = freezed,Object? hiredDate = freezed,Object? leaveDate = freezed,Object? employmentStatus = null,Object? position = freezed,Object? isTeaching = null,Object? createdAt = freezed,Object? updateAt = freezed,}) {
  return _then(_self.copyWith(
employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,employeeNumberId: null == employeeNumberId ? _self.employeeNumberId : employeeNumberId // ignore: cast_nullable_to_non_nullable
as String,divisionId: freezed == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as int?,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,educationLevel: freezed == educationLevel ? _self.educationLevel : educationLevel // ignore: cast_nullable_to_non_nullable
as String?,hiredDate: freezed == hiredDate ? _self.hiredDate : hiredDate // ignore: cast_nullable_to_non_nullable
as String?,leaveDate: freezed == leaveDate ? _self.leaveDate : leaveDate // ignore: cast_nullable_to_non_nullable
as String?,employmentStatus: null == employmentStatus ? _self.employmentStatus : employmentStatus // ignore: cast_nullable_to_non_nullable
as String,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,isTeaching: null == isTeaching ? _self.isTeaching : isTeaching // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updateAt: freezed == updateAt ? _self.updateAt : updateAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _EmployeeModel with DiagnosticableTreeMixin implements EmployeeModel {
  const _EmployeeModel({@JsonKey(name: 'employee_id', includeToJson: false) this.employeeId, @JsonKey(name: 'employee_number_id') required this.employeeNumberId, @JsonKey(name: 'division_id') this.divisionId, @JsonKey(name: 'employee_name') required this.employeeName, @JsonKey(name: 'education_level') this.educationLevel, @JsonKey(name: 'hired_date') this.hiredDate, @JsonKey(name: 'leave_date', includeIfNull: false) this.leaveDate, @JsonKey(name: 'employment_status') required this.employmentStatus, this.position, @JsonKey(name: 'is_teaching') required this.isTeaching, @JsonKey(name: 'created_at', includeToJson: false) this.createdAt, @JsonKey(name: 'update_at', includeIfNull: false) this.updateAt});
  factory _EmployeeModel.fromJson(Map<String, dynamic> json) => _$EmployeeModelFromJson(json);

@override@JsonKey(name: 'employee_id', includeToJson: false) final  String? employeeId;
@override@JsonKey(name: 'employee_number_id') final  String employeeNumberId;
@override@JsonKey(name: 'division_id') final  int? divisionId;
@override@JsonKey(name: 'employee_name') final  String employeeName;
@override@JsonKey(name: 'education_level') final  String? educationLevel;
@override@JsonKey(name: 'hired_date') final  String? hiredDate;
@override@JsonKey(name: 'leave_date', includeIfNull: false) final  String? leaveDate;
@override@JsonKey(name: 'employment_status') final  String employmentStatus;
@override final  String? position;
@override@JsonKey(name: 'is_teaching') final  bool isTeaching;
@override@JsonKey(name: 'created_at', includeToJson: false) final  String? createdAt;
@override@JsonKey(name: 'update_at', includeIfNull: false) final  String? updateAt;

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeModelCopyWith<_EmployeeModel> get copyWith => __$EmployeeModelCopyWithImpl<_EmployeeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmployeeModel'))
    ..add(DiagnosticsProperty('employeeId', employeeId))..add(DiagnosticsProperty('employeeNumberId', employeeNumberId))..add(DiagnosticsProperty('divisionId', divisionId))..add(DiagnosticsProperty('employeeName', employeeName))..add(DiagnosticsProperty('educationLevel', educationLevel))..add(DiagnosticsProperty('hiredDate', hiredDate))..add(DiagnosticsProperty('leaveDate', leaveDate))..add(DiagnosticsProperty('employmentStatus', employmentStatus))..add(DiagnosticsProperty('position', position))..add(DiagnosticsProperty('isTeaching', isTeaching))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updateAt', updateAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeModel&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeNumberId, employeeNumberId) || other.employeeNumberId == employeeNumberId)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.educationLevel, educationLevel) || other.educationLevel == educationLevel)&&(identical(other.hiredDate, hiredDate) || other.hiredDate == hiredDate)&&(identical(other.leaveDate, leaveDate) || other.leaveDate == leaveDate)&&(identical(other.employmentStatus, employmentStatus) || other.employmentStatus == employmentStatus)&&(identical(other.position, position) || other.position == position)&&(identical(other.isTeaching, isTeaching) || other.isTeaching == isTeaching)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updateAt, updateAt) || other.updateAt == updateAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employeeId,employeeNumberId,divisionId,employeeName,educationLevel,hiredDate,leaveDate,employmentStatus,position,isTeaching,createdAt,updateAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmployeeModel(employeeId: $employeeId, employeeNumberId: $employeeNumberId, divisionId: $divisionId, employeeName: $employeeName, educationLevel: $educationLevel, hiredDate: $hiredDate, leaveDate: $leaveDate, employmentStatus: $employmentStatus, position: $position, isTeaching: $isTeaching, createdAt: $createdAt, updateAt: $updateAt)';
}


}

/// @nodoc
abstract mixin class _$EmployeeModelCopyWith<$Res> implements $EmployeeModelCopyWith<$Res> {
  factory _$EmployeeModelCopyWith(_EmployeeModel value, $Res Function(_EmployeeModel) _then) = __$EmployeeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'employee_id', includeToJson: false) String? employeeId,@JsonKey(name: 'employee_number_id') String employeeNumberId,@JsonKey(name: 'division_id') int? divisionId,@JsonKey(name: 'employee_name') String employeeName,@JsonKey(name: 'education_level') String? educationLevel,@JsonKey(name: 'hired_date') String? hiredDate,@JsonKey(name: 'leave_date', includeIfNull: false) String? leaveDate,@JsonKey(name: 'employment_status') String employmentStatus, String? position,@JsonKey(name: 'is_teaching') bool isTeaching,@JsonKey(name: 'created_at', includeToJson: false) String? createdAt,@JsonKey(name: 'update_at', includeIfNull: false) String? updateAt
});




}
/// @nodoc
class __$EmployeeModelCopyWithImpl<$Res>
    implements _$EmployeeModelCopyWith<$Res> {
  __$EmployeeModelCopyWithImpl(this._self, this._then);

  final _EmployeeModel _self;
  final $Res Function(_EmployeeModel) _then;

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? employeeId = freezed,Object? employeeNumberId = null,Object? divisionId = freezed,Object? employeeName = null,Object? educationLevel = freezed,Object? hiredDate = freezed,Object? leaveDate = freezed,Object? employmentStatus = null,Object? position = freezed,Object? isTeaching = null,Object? createdAt = freezed,Object? updateAt = freezed,}) {
  return _then(_EmployeeModel(
employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,employeeNumberId: null == employeeNumberId ? _self.employeeNumberId : employeeNumberId // ignore: cast_nullable_to_non_nullable
as String,divisionId: freezed == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as int?,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,educationLevel: freezed == educationLevel ? _self.educationLevel : educationLevel // ignore: cast_nullable_to_non_nullable
as String?,hiredDate: freezed == hiredDate ? _self.hiredDate : hiredDate // ignore: cast_nullable_to_non_nullable
as String?,leaveDate: freezed == leaveDate ? _self.leaveDate : leaveDate // ignore: cast_nullable_to_non_nullable
as String?,employmentStatus: null == employmentStatus ? _self.employmentStatus : employmentStatus // ignore: cast_nullable_to_non_nullable
as String,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,isTeaching: null == isTeaching ? _self.isTeaching : isTeaching // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updateAt: freezed == updateAt ? _self.updateAt : updateAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
