// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmployeeEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmployeeEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmployeeEvent()';
}


}

/// @nodoc
class $EmployeeEventCopyWith<$Res>  {
$EmployeeEventCopyWith(EmployeeEvent _, $Res Function(EmployeeEvent) __);
}


/// @nodoc


class FetchEmployees with DiagnosticableTreeMixin implements EmployeeEvent {
  const FetchEmployees();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmployeeEvent.fetchEmployees'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchEmployees);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmployeeEvent.fetchEmployees()';
}


}




/// @nodoc


class GetEmployeeById with DiagnosticableTreeMixin implements EmployeeEvent {
  const GetEmployeeById(this.id);
  

 final  String id;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetEmployeeByIdCopyWith<GetEmployeeById> get copyWith => _$GetEmployeeByIdCopyWithImpl<GetEmployeeById>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmployeeEvent.getEmployeeById'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetEmployeeById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmployeeEvent.getEmployeeById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetEmployeeByIdCopyWith<$Res> implements $EmployeeEventCopyWith<$Res> {
  factory $GetEmployeeByIdCopyWith(GetEmployeeById value, $Res Function(GetEmployeeById) _then) = _$GetEmployeeByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetEmployeeByIdCopyWithImpl<$Res>
    implements $GetEmployeeByIdCopyWith<$Res> {
  _$GetEmployeeByIdCopyWithImpl(this._self, this._then);

  final GetEmployeeById _self;
  final $Res Function(GetEmployeeById) _then;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetEmployeeById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CreateUserEmployees with DiagnosticableTreeMixin implements EmployeeEvent {
  const CreateUserEmployees(final  List<UserEmployee> userEmployees, this.defaultPassword): _userEmployees = userEmployees;
  

 final  List<UserEmployee> _userEmployees;
 List<UserEmployee> get userEmployees {
  if (_userEmployees is EqualUnmodifiableListView) return _userEmployees;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userEmployees);
}

 final  String defaultPassword;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateUserEmployeesCopyWith<CreateUserEmployees> get copyWith => _$CreateUserEmployeesCopyWithImpl<CreateUserEmployees>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmployeeEvent.createUserEmployees'))
    ..add(DiagnosticsProperty('userEmployees', userEmployees))..add(DiagnosticsProperty('defaultPassword', defaultPassword));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUserEmployees&&const DeepCollectionEquality().equals(other._userEmployees, _userEmployees)&&(identical(other.defaultPassword, defaultPassword) || other.defaultPassword == defaultPassword));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_userEmployees),defaultPassword);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmployeeEvent.createUserEmployees(userEmployees: $userEmployees, defaultPassword: $defaultPassword)';
}


}

/// @nodoc
abstract mixin class $CreateUserEmployeesCopyWith<$Res> implements $EmployeeEventCopyWith<$Res> {
  factory $CreateUserEmployeesCopyWith(CreateUserEmployees value, $Res Function(CreateUserEmployees) _then) = _$CreateUserEmployeesCopyWithImpl;
@useResult
$Res call({
 List<UserEmployee> userEmployees, String defaultPassword
});




}
/// @nodoc
class _$CreateUserEmployeesCopyWithImpl<$Res>
    implements $CreateUserEmployeesCopyWith<$Res> {
  _$CreateUserEmployeesCopyWithImpl(this._self, this._then);

  final CreateUserEmployees _self;
  final $Res Function(CreateUserEmployees) _then;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userEmployees = null,Object? defaultPassword = null,}) {
  return _then(CreateUserEmployees(
null == userEmployees ? _self._userEmployees : userEmployees // ignore: cast_nullable_to_non_nullable
as List<UserEmployee>,null == defaultPassword ? _self.defaultPassword : defaultPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CreateUserEmployee with DiagnosticableTreeMixin implements EmployeeEvent {
  const CreateUserEmployee(this.userEmployee, this.defaultPassword);
  

 final  UserEmployee userEmployee;
 final  String defaultPassword;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateUserEmployeeCopyWith<CreateUserEmployee> get copyWith => _$CreateUserEmployeeCopyWithImpl<CreateUserEmployee>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmployeeEvent.createUserEmployee'))
    ..add(DiagnosticsProperty('userEmployee', userEmployee))..add(DiagnosticsProperty('defaultPassword', defaultPassword));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUserEmployee&&(identical(other.userEmployee, userEmployee) || other.userEmployee == userEmployee)&&(identical(other.defaultPassword, defaultPassword) || other.defaultPassword == defaultPassword));
}


@override
int get hashCode => Object.hash(runtimeType,userEmployee,defaultPassword);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmployeeEvent.createUserEmployee(userEmployee: $userEmployee, defaultPassword: $defaultPassword)';
}


}

/// @nodoc
abstract mixin class $CreateUserEmployeeCopyWith<$Res> implements $EmployeeEventCopyWith<$Res> {
  factory $CreateUserEmployeeCopyWith(CreateUserEmployee value, $Res Function(CreateUserEmployee) _then) = _$CreateUserEmployeeCopyWithImpl;
@useResult
$Res call({
 UserEmployee userEmployee, String defaultPassword
});


$UserEmployeeCopyWith<$Res> get userEmployee;

}
/// @nodoc
class _$CreateUserEmployeeCopyWithImpl<$Res>
    implements $CreateUserEmployeeCopyWith<$Res> {
  _$CreateUserEmployeeCopyWithImpl(this._self, this._then);

  final CreateUserEmployee _self;
  final $Res Function(CreateUserEmployee) _then;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userEmployee = null,Object? defaultPassword = null,}) {
  return _then(CreateUserEmployee(
null == userEmployee ? _self.userEmployee : userEmployee // ignore: cast_nullable_to_non_nullable
as UserEmployee,null == defaultPassword ? _self.defaultPassword : defaultPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEmployeeCopyWith<$Res> get userEmployee {
  
  return $UserEmployeeCopyWith<$Res>(_self.userEmployee, (value) {
    return _then(_self.copyWith(userEmployee: value));
  });
}
}

/// @nodoc


class DeleteEmployee with DiagnosticableTreeMixin implements EmployeeEvent {
  const DeleteEmployee(this.id);
  

 final  String id;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteEmployeeCopyWith<DeleteEmployee> get copyWith => _$DeleteEmployeeCopyWithImpl<DeleteEmployee>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmployeeEvent.deleteEmployee'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteEmployee&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmployeeEvent.deleteEmployee(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteEmployeeCopyWith<$Res> implements $EmployeeEventCopyWith<$Res> {
  factory $DeleteEmployeeCopyWith(DeleteEmployee value, $Res Function(DeleteEmployee) _then) = _$DeleteEmployeeCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteEmployeeCopyWithImpl<$Res>
    implements $DeleteEmployeeCopyWith<$Res> {
  _$DeleteEmployeeCopyWithImpl(this._self, this._then);

  final DeleteEmployee _self;
  final $Res Function(DeleteEmployee) _then;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteEmployee(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateUserEmployee with DiagnosticableTreeMixin implements EmployeeEvent {
  const UpdateUserEmployee(this.userEmployee, this.resetPassword);
  

 final  UserEmployee userEmployee;
 final  String? resetPassword;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateUserEmployeeCopyWith<UpdateUserEmployee> get copyWith => _$UpdateUserEmployeeCopyWithImpl<UpdateUserEmployee>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmployeeEvent.updateUserEmployee'))
    ..add(DiagnosticsProperty('userEmployee', userEmployee))..add(DiagnosticsProperty('resetPassword', resetPassword));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateUserEmployee&&(identical(other.userEmployee, userEmployee) || other.userEmployee == userEmployee)&&(identical(other.resetPassword, resetPassword) || other.resetPassword == resetPassword));
}


@override
int get hashCode => Object.hash(runtimeType,userEmployee,resetPassword);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmployeeEvent.updateUserEmployee(userEmployee: $userEmployee, resetPassword: $resetPassword)';
}


}

/// @nodoc
abstract mixin class $UpdateUserEmployeeCopyWith<$Res> implements $EmployeeEventCopyWith<$Res> {
  factory $UpdateUserEmployeeCopyWith(UpdateUserEmployee value, $Res Function(UpdateUserEmployee) _then) = _$UpdateUserEmployeeCopyWithImpl;
@useResult
$Res call({
 UserEmployee userEmployee, String? resetPassword
});


$UserEmployeeCopyWith<$Res> get userEmployee;

}
/// @nodoc
class _$UpdateUserEmployeeCopyWithImpl<$Res>
    implements $UpdateUserEmployeeCopyWith<$Res> {
  _$UpdateUserEmployeeCopyWithImpl(this._self, this._then);

  final UpdateUserEmployee _self;
  final $Res Function(UpdateUserEmployee) _then;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userEmployee = null,Object? resetPassword = freezed,}) {
  return _then(UpdateUserEmployee(
null == userEmployee ? _self.userEmployee : userEmployee // ignore: cast_nullable_to_non_nullable
as UserEmployee,freezed == resetPassword ? _self.resetPassword : resetPassword // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEmployeeCopyWith<$Res> get userEmployee {
  
  return $UserEmployeeCopyWith<$Res>(_self.userEmployee, (value) {
    return _then(_self.copyWith(userEmployee: value));
  });
}
}

// dart format on
