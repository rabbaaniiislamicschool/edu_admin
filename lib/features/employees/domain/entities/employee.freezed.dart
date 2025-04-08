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

 String? get employeeId; String get employeeNumberId; String get employeeName; int? get divisionId; String? get hiredDate; String? get leaveDate; String? get status; bool? get isTeaching; String? get createdAt; String? get updatedAt; Division? get division; User? get user;
/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeCopyWith<Employee> get copyWith => _$EmployeeCopyWithImpl<Employee>(this as Employee, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Employee&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeNumberId, employeeNumberId) || other.employeeNumberId == employeeNumberId)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.hiredDate, hiredDate) || other.hiredDate == hiredDate)&&(identical(other.leaveDate, leaveDate) || other.leaveDate == leaveDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.isTeaching, isTeaching) || other.isTeaching == isTeaching)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.division, division) || other.division == division)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,employeeId,employeeNumberId,employeeName,divisionId,hiredDate,leaveDate,status,isTeaching,createdAt,updatedAt,division,user);

@override
String toString() {
  return 'Employee(employeeId: $employeeId, employeeNumberId: $employeeNumberId, employeeName: $employeeName, divisionId: $divisionId, hiredDate: $hiredDate, leaveDate: $leaveDate, status: $status, isTeaching: $isTeaching, createdAt: $createdAt, updatedAt: $updatedAt, division: $division, user: $user)';
}


}

/// @nodoc
abstract mixin class $EmployeeCopyWith<$Res>  {
  factory $EmployeeCopyWith(Employee value, $Res Function(Employee) _then) = _$EmployeeCopyWithImpl;
@useResult
$Res call({
 String? employeeId, String employeeNumberId, String employeeName, int? divisionId, String? hiredDate, String? leaveDate, String? status, bool? isTeaching, String? createdAt, String? updatedAt, Division? division, User? user
});


$DivisionCopyWith<$Res>? get division;$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$EmployeeCopyWithImpl<$Res>
    implements $EmployeeCopyWith<$Res> {
  _$EmployeeCopyWithImpl(this._self, this._then);

  final Employee _self;
  final $Res Function(Employee) _then;

/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? employeeId = freezed,Object? employeeNumberId = null,Object? employeeName = null,Object? divisionId = freezed,Object? hiredDate = freezed,Object? leaveDate = freezed,Object? status = freezed,Object? isTeaching = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? division = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,employeeNumberId: null == employeeNumberId ? _self.employeeNumberId : employeeNumberId // ignore: cast_nullable_to_non_nullable
as String,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,divisionId: freezed == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as int?,hiredDate: freezed == hiredDate ? _self.hiredDate : hiredDate // ignore: cast_nullable_to_non_nullable
as String?,leaveDate: freezed == leaveDate ? _self.leaveDate : leaveDate // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,isTeaching: freezed == isTeaching ? _self.isTeaching : isTeaching // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,division: freezed == division ? _self.division : division // ignore: cast_nullable_to_non_nullable
as Division?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}
/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DivisionCopyWith<$Res>? get division {
    if (_self.division == null) {
    return null;
  }

  return $DivisionCopyWith<$Res>(_self.division!, (value) {
    return _then(_self.copyWith(division: value));
  });
}/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc


class _Employee implements Employee {
   _Employee({this.employeeId, required this.employeeNumberId, required this.employeeName, this.divisionId, this.hiredDate, this.leaveDate, this.status, this.isTeaching, this.createdAt, this.updatedAt, this.division, this.user});
  

@override final  String? employeeId;
@override final  String employeeNumberId;
@override final  String employeeName;
@override final  int? divisionId;
@override final  String? hiredDate;
@override final  String? leaveDate;
@override final  String? status;
@override final  bool? isTeaching;
@override final  String? createdAt;
@override final  String? updatedAt;
@override final  Division? division;
@override final  User? user;

/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeCopyWith<_Employee> get copyWith => __$EmployeeCopyWithImpl<_Employee>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Employee&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeNumberId, employeeNumberId) || other.employeeNumberId == employeeNumberId)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.hiredDate, hiredDate) || other.hiredDate == hiredDate)&&(identical(other.leaveDate, leaveDate) || other.leaveDate == leaveDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.isTeaching, isTeaching) || other.isTeaching == isTeaching)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.division, division) || other.division == division)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,employeeId,employeeNumberId,employeeName,divisionId,hiredDate,leaveDate,status,isTeaching,createdAt,updatedAt,division,user);

@override
String toString() {
  return 'Employee(employeeId: $employeeId, employeeNumberId: $employeeNumberId, employeeName: $employeeName, divisionId: $divisionId, hiredDate: $hiredDate, leaveDate: $leaveDate, status: $status, isTeaching: $isTeaching, createdAt: $createdAt, updatedAt: $updatedAt, division: $division, user: $user)';
}


}

/// @nodoc
abstract mixin class _$EmployeeCopyWith<$Res> implements $EmployeeCopyWith<$Res> {
  factory _$EmployeeCopyWith(_Employee value, $Res Function(_Employee) _then) = __$EmployeeCopyWithImpl;
@override @useResult
$Res call({
 String? employeeId, String employeeNumberId, String employeeName, int? divisionId, String? hiredDate, String? leaveDate, String? status, bool? isTeaching, String? createdAt, String? updatedAt, Division? division, User? user
});


@override $DivisionCopyWith<$Res>? get division;@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$EmployeeCopyWithImpl<$Res>
    implements _$EmployeeCopyWith<$Res> {
  __$EmployeeCopyWithImpl(this._self, this._then);

  final _Employee _self;
  final $Res Function(_Employee) _then;

/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? employeeId = freezed,Object? employeeNumberId = null,Object? employeeName = null,Object? divisionId = freezed,Object? hiredDate = freezed,Object? leaveDate = freezed,Object? status = freezed,Object? isTeaching = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? division = freezed,Object? user = freezed,}) {
  return _then(_Employee(
employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,employeeNumberId: null == employeeNumberId ? _self.employeeNumberId : employeeNumberId // ignore: cast_nullable_to_non_nullable
as String,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,divisionId: freezed == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as int?,hiredDate: freezed == hiredDate ? _self.hiredDate : hiredDate // ignore: cast_nullable_to_non_nullable
as String?,leaveDate: freezed == leaveDate ? _self.leaveDate : leaveDate // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,isTeaching: freezed == isTeaching ? _self.isTeaching : isTeaching // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,division: freezed == division ? _self.division : division // ignore: cast_nullable_to_non_nullable
as Division?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}

/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DivisionCopyWith<$Res>? get division {
    if (_self.division == null) {
    return null;
  }

  return $DivisionCopyWith<$Res>(_self.division!, (value) {
    return _then(_self.copyWith(division: value));
  });
}/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
