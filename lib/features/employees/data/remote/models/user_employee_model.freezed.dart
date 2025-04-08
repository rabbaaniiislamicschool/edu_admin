// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_employee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserEmployeeModel {

 UserModel get user; EmployeeModel get employee;
/// Create a copy of UserEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserEmployeeModelCopyWith<UserEmployeeModel> get copyWith => _$UserEmployeeModelCopyWithImpl<UserEmployeeModel>(this as UserEmployeeModel, _$identity);

  /// Serializes this UserEmployeeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEmployeeModel&&(identical(other.user, user) || other.user == user)&&(identical(other.employee, employee) || other.employee == employee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,employee);

@override
String toString() {
  return 'UserEmployeeModel(user: $user, employee: $employee)';
}


}

/// @nodoc
abstract mixin class $UserEmployeeModelCopyWith<$Res>  {
  factory $UserEmployeeModelCopyWith(UserEmployeeModel value, $Res Function(UserEmployeeModel) _then) = _$UserEmployeeModelCopyWithImpl;
@useResult
$Res call({
 UserModel user, EmployeeModel employee
});


$UserModelCopyWith<$Res> get user;$EmployeeModelCopyWith<$Res> get employee;

}
/// @nodoc
class _$UserEmployeeModelCopyWithImpl<$Res>
    implements $UserEmployeeModelCopyWith<$Res> {
  _$UserEmployeeModelCopyWithImpl(this._self, this._then);

  final UserEmployeeModel _self;
  final $Res Function(UserEmployeeModel) _then;

/// Create a copy of UserEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? employee = null,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,employee: null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as EmployeeModel,
  ));
}
/// Create a copy of UserEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of UserEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeModelCopyWith<$Res> get employee {
  
  return $EmployeeModelCopyWith<$Res>(_self.employee, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _UserEmployeeModel implements UserEmployeeModel {
   _UserEmployeeModel({required this.user, required this.employee});
  factory _UserEmployeeModel.fromJson(Map<String, dynamic> json) => _$UserEmployeeModelFromJson(json);

@override final  UserModel user;
@override final  EmployeeModel employee;

/// Create a copy of UserEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserEmployeeModelCopyWith<_UserEmployeeModel> get copyWith => __$UserEmployeeModelCopyWithImpl<_UserEmployeeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserEmployeeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserEmployeeModel&&(identical(other.user, user) || other.user == user)&&(identical(other.employee, employee) || other.employee == employee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,employee);

@override
String toString() {
  return 'UserEmployeeModel(user: $user, employee: $employee)';
}


}

/// @nodoc
abstract mixin class _$UserEmployeeModelCopyWith<$Res> implements $UserEmployeeModelCopyWith<$Res> {
  factory _$UserEmployeeModelCopyWith(_UserEmployeeModel value, $Res Function(_UserEmployeeModel) _then) = __$UserEmployeeModelCopyWithImpl;
@override @useResult
$Res call({
 UserModel user, EmployeeModel employee
});


@override $UserModelCopyWith<$Res> get user;@override $EmployeeModelCopyWith<$Res> get employee;

}
/// @nodoc
class __$UserEmployeeModelCopyWithImpl<$Res>
    implements _$UserEmployeeModelCopyWith<$Res> {
  __$UserEmployeeModelCopyWithImpl(this._self, this._then);

  final _UserEmployeeModel _self;
  final $Res Function(_UserEmployeeModel) _then;

/// Create a copy of UserEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? employee = null,}) {
  return _then(_UserEmployeeModel(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,employee: null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as EmployeeModel,
  ));
}

/// Create a copy of UserEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of UserEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeModelCopyWith<$Res> get employee {
  
  return $EmployeeModelCopyWith<$Res>(_self.employee, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}

// dart format on
