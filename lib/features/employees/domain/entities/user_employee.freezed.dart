// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_employee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserEmployee {

 User get user; Employee get employee;
/// Create a copy of UserEmployee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserEmployeeCopyWith<UserEmployee> get copyWith => _$UserEmployeeCopyWithImpl<UserEmployee>(this as UserEmployee, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEmployee&&(identical(other.user, user) || other.user == user)&&(identical(other.employee, employee) || other.employee == employee));
}


@override
int get hashCode => Object.hash(runtimeType,user,employee);

@override
String toString() {
  return 'UserEmployee(user: $user, employee: $employee)';
}


}

/// @nodoc
abstract mixin class $UserEmployeeCopyWith<$Res>  {
  factory $UserEmployeeCopyWith(UserEmployee value, $Res Function(UserEmployee) _then) = _$UserEmployeeCopyWithImpl;
@useResult
$Res call({
 User user, Employee employee
});


$UserCopyWith<$Res> get user;$EmployeeCopyWith<$Res> get employee;

}
/// @nodoc
class _$UserEmployeeCopyWithImpl<$Res>
    implements $UserEmployeeCopyWith<$Res> {
  _$UserEmployeeCopyWithImpl(this._self, this._then);

  final UserEmployee _self;
  final $Res Function(UserEmployee) _then;

/// Create a copy of UserEmployee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? employee = null,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,employee: null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as Employee,
  ));
}
/// Create a copy of UserEmployee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of UserEmployee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeCopyWith<$Res> get employee {
  
  return $EmployeeCopyWith<$Res>(_self.employee, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}


/// @nodoc


class _UserEmployee implements UserEmployee {
   _UserEmployee({required this.user, required this.employee});
  

@override final  User user;
@override final  Employee employee;

/// Create a copy of UserEmployee
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserEmployeeCopyWith<_UserEmployee> get copyWith => __$UserEmployeeCopyWithImpl<_UserEmployee>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserEmployee&&(identical(other.user, user) || other.user == user)&&(identical(other.employee, employee) || other.employee == employee));
}


@override
int get hashCode => Object.hash(runtimeType,user,employee);

@override
String toString() {
  return 'UserEmployee(user: $user, employee: $employee)';
}


}

/// @nodoc
abstract mixin class _$UserEmployeeCopyWith<$Res> implements $UserEmployeeCopyWith<$Res> {
  factory _$UserEmployeeCopyWith(_UserEmployee value, $Res Function(_UserEmployee) _then) = __$UserEmployeeCopyWithImpl;
@override @useResult
$Res call({
 User user, Employee employee
});


@override $UserCopyWith<$Res> get user;@override $EmployeeCopyWith<$Res> get employee;

}
/// @nodoc
class __$UserEmployeeCopyWithImpl<$Res>
    implements _$UserEmployeeCopyWith<$Res> {
  __$UserEmployeeCopyWithImpl(this._self, this._then);

  final _UserEmployee _self;
  final $Res Function(_UserEmployee) _then;

/// Create a copy of UserEmployee
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? employee = null,}) {
  return _then(_UserEmployee(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,employee: null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as Employee,
  ));
}

/// Create a copy of UserEmployee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of UserEmployee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeCopyWith<$Res> get employee {
  
  return $EmployeeCopyWith<$Res>(_self.employee, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}

// dart format on
