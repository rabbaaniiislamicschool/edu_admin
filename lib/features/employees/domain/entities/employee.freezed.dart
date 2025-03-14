// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Employee {

 String? get employeeId; String get employeeNumberId; int? get divisionId; String get employeeName; String? get educationLevel; String? get hiredDate; String? get leaveDate; String get employmentStatus; String? get position; bool get isTeaching; String? get createdAt; String? get updateAt;
/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeCopyWith<Employee> get copyWith => _$EmployeeCopyWithImpl<Employee>(this as Employee, _$identity);

  /// Serializes this Employee to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Employee&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeNumberId, employeeNumberId) || other.employeeNumberId == employeeNumberId)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.educationLevel, educationLevel) || other.educationLevel == educationLevel)&&(identical(other.hiredDate, hiredDate) || other.hiredDate == hiredDate)&&(identical(other.leaveDate, leaveDate) || other.leaveDate == leaveDate)&&(identical(other.employmentStatus, employmentStatus) || other.employmentStatus == employmentStatus)&&(identical(other.position, position) || other.position == position)&&(identical(other.isTeaching, isTeaching) || other.isTeaching == isTeaching)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updateAt, updateAt) || other.updateAt == updateAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employeeId,employeeNumberId,divisionId,employeeName,educationLevel,hiredDate,leaveDate,employmentStatus,position,isTeaching,createdAt,updateAt);

@override
String toString() {
  return 'Employee(employeeId: $employeeId, employeeNumberId: $employeeNumberId, divisionId: $divisionId, employeeName: $employeeName, educationLevel: $educationLevel, hiredDate: $hiredDate, leaveDate: $leaveDate, employmentStatus: $employmentStatus, position: $position, isTeaching: $isTeaching, createdAt: $createdAt, updateAt: $updateAt)';
}


}

/// @nodoc
abstract mixin class $EmployeeCopyWith<$Res>  {
  factory $EmployeeCopyWith(Employee value, $Res Function(Employee) _then) = _$EmployeeCopyWithImpl;
@useResult
$Res call({
 String? employeeId, String employeeNumberId, int? divisionId, String employeeName, String? educationLevel, String? hiredDate, String? leaveDate, String employmentStatus, String? position, bool isTeaching, String? createdAt, String? updateAt
});




}
/// @nodoc
class _$EmployeeCopyWithImpl<$Res>
    implements $EmployeeCopyWith<$Res> {
  _$EmployeeCopyWithImpl(this._self, this._then);

  final Employee _self;
  final $Res Function(Employee) _then;

/// Create a copy of Employee
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

class _Employee implements Employee {
   _Employee({this.employeeId, required this.employeeNumberId, this.divisionId, required this.employeeName, this.educationLevel, this.hiredDate, this.leaveDate, required this.employmentStatus, this.position, required this.isTeaching, this.createdAt, this.updateAt});
  factory _Employee.fromJson(Map<String, dynamic> json) => _$EmployeeFromJson(json);

@override final  String? employeeId;
@override final  String employeeNumberId;
@override final  int? divisionId;
@override final  String employeeName;
@override final  String? educationLevel;
@override final  String? hiredDate;
@override final  String? leaveDate;
@override final  String employmentStatus;
@override final  String? position;
@override final  bool isTeaching;
@override final  String? createdAt;
@override final  String? updateAt;

/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeCopyWith<_Employee> get copyWith => __$EmployeeCopyWithImpl<_Employee>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Employee&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeNumberId, employeeNumberId) || other.employeeNumberId == employeeNumberId)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.educationLevel, educationLevel) || other.educationLevel == educationLevel)&&(identical(other.hiredDate, hiredDate) || other.hiredDate == hiredDate)&&(identical(other.leaveDate, leaveDate) || other.leaveDate == leaveDate)&&(identical(other.employmentStatus, employmentStatus) || other.employmentStatus == employmentStatus)&&(identical(other.position, position) || other.position == position)&&(identical(other.isTeaching, isTeaching) || other.isTeaching == isTeaching)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updateAt, updateAt) || other.updateAt == updateAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employeeId,employeeNumberId,divisionId,employeeName,educationLevel,hiredDate,leaveDate,employmentStatus,position,isTeaching,createdAt,updateAt);

@override
String toString() {
  return 'Employee(employeeId: $employeeId, employeeNumberId: $employeeNumberId, divisionId: $divisionId, employeeName: $employeeName, educationLevel: $educationLevel, hiredDate: $hiredDate, leaveDate: $leaveDate, employmentStatus: $employmentStatus, position: $position, isTeaching: $isTeaching, createdAt: $createdAt, updateAt: $updateAt)';
}


}

/// @nodoc
abstract mixin class _$EmployeeCopyWith<$Res> implements $EmployeeCopyWith<$Res> {
  factory _$EmployeeCopyWith(_Employee value, $Res Function(_Employee) _then) = __$EmployeeCopyWithImpl;
@override @useResult
$Res call({
 String? employeeId, String employeeNumberId, int? divisionId, String employeeName, String? educationLevel, String? hiredDate, String? leaveDate, String employmentStatus, String? position, bool isTeaching, String? createdAt, String? updateAt
});




}
/// @nodoc
class __$EmployeeCopyWithImpl<$Res>
    implements _$EmployeeCopyWith<$Res> {
  __$EmployeeCopyWithImpl(this._self, this._then);

  final _Employee _self;
  final $Res Function(_Employee) _then;

/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? employeeId = freezed,Object? employeeNumberId = null,Object? divisionId = freezed,Object? employeeName = null,Object? educationLevel = freezed,Object? hiredDate = freezed,Object? leaveDate = freezed,Object? employmentStatus = null,Object? position = freezed,Object? isTeaching = null,Object? createdAt = freezed,Object? updateAt = freezed,}) {
  return _then(_Employee(
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
