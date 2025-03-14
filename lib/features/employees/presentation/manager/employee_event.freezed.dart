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


class CreateEmployee with DiagnosticableTreeMixin implements EmployeeEvent {
  const CreateEmployee(this.foundation);
  

 final  Employee foundation;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateEmployeeCopyWith<CreateEmployee> get copyWith => _$CreateEmployeeCopyWithImpl<CreateEmployee>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmployeeEvent.createEmployee'))
    ..add(DiagnosticsProperty('foundation', foundation));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateEmployee&&(identical(other.foundation, foundation) || other.foundation == foundation));
}


@override
int get hashCode => Object.hash(runtimeType,foundation);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmployeeEvent.createEmployee(foundation: $foundation)';
}


}

/// @nodoc
abstract mixin class $CreateEmployeeCopyWith<$Res> implements $EmployeeEventCopyWith<$Res> {
  factory $CreateEmployeeCopyWith(CreateEmployee value, $Res Function(CreateEmployee) _then) = _$CreateEmployeeCopyWithImpl;
@useResult
$Res call({
 Employee foundation
});


$EmployeeCopyWith<$Res> get foundation;

}
/// @nodoc
class _$CreateEmployeeCopyWithImpl<$Res>
    implements $CreateEmployeeCopyWith<$Res> {
  _$CreateEmployeeCopyWithImpl(this._self, this._then);

  final CreateEmployee _self;
  final $Res Function(CreateEmployee) _then;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? foundation = null,}) {
  return _then(CreateEmployee(
null == foundation ? _self.foundation : foundation // ignore: cast_nullable_to_non_nullable
as Employee,
  ));
}

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeCopyWith<$Res> get foundation {
  
  return $EmployeeCopyWith<$Res>(_self.foundation, (value) {
    return _then(_self.copyWith(foundation: value));
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


class UpdateEmployee with DiagnosticableTreeMixin implements EmployeeEvent {
  const UpdateEmployee(this.foundation);
  

 final  Employee foundation;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateEmployeeCopyWith<UpdateEmployee> get copyWith => _$UpdateEmployeeCopyWithImpl<UpdateEmployee>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmployeeEvent.updateEmployee'))
    ..add(DiagnosticsProperty('foundation', foundation));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEmployee&&(identical(other.foundation, foundation) || other.foundation == foundation));
}


@override
int get hashCode => Object.hash(runtimeType,foundation);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmployeeEvent.updateEmployee(foundation: $foundation)';
}


}

/// @nodoc
abstract mixin class $UpdateEmployeeCopyWith<$Res> implements $EmployeeEventCopyWith<$Res> {
  factory $UpdateEmployeeCopyWith(UpdateEmployee value, $Res Function(UpdateEmployee) _then) = _$UpdateEmployeeCopyWithImpl;
@useResult
$Res call({
 Employee foundation
});


$EmployeeCopyWith<$Res> get foundation;

}
/// @nodoc
class _$UpdateEmployeeCopyWithImpl<$Res>
    implements $UpdateEmployeeCopyWith<$Res> {
  _$UpdateEmployeeCopyWithImpl(this._self, this._then);

  final UpdateEmployee _self;
  final $Res Function(UpdateEmployee) _then;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? foundation = null,}) {
  return _then(UpdateEmployee(
null == foundation ? _self.foundation : foundation // ignore: cast_nullable_to_non_nullable
as Employee,
  ));
}

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeCopyWith<$Res> get foundation {
  
  return $EmployeeCopyWith<$Res>(_self.foundation, (value) {
    return _then(_self.copyWith(foundation: value));
  });
}
}

/// @nodoc


class ImportEmployeeUsers with DiagnosticableTreeMixin implements EmployeeEvent {
  const ImportEmployeeUsers(this.importEmployee);
  

 final  ImportEmployee importEmployee;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImportEmployeeUsersCopyWith<ImportEmployeeUsers> get copyWith => _$ImportEmployeeUsersCopyWithImpl<ImportEmployeeUsers>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmployeeEvent.importEmployeeUsers'))
    ..add(DiagnosticsProperty('importEmployee', importEmployee));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImportEmployeeUsers&&(identical(other.importEmployee, importEmployee) || other.importEmployee == importEmployee));
}


@override
int get hashCode => Object.hash(runtimeType,importEmployee);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmployeeEvent.importEmployeeUsers(importEmployee: $importEmployee)';
}


}

/// @nodoc
abstract mixin class $ImportEmployeeUsersCopyWith<$Res> implements $EmployeeEventCopyWith<$Res> {
  factory $ImportEmployeeUsersCopyWith(ImportEmployeeUsers value, $Res Function(ImportEmployeeUsers) _then) = _$ImportEmployeeUsersCopyWithImpl;
@useResult
$Res call({
 ImportEmployee importEmployee
});


$ImportEmployeeCopyWith<$Res> get importEmployee;

}
/// @nodoc
class _$ImportEmployeeUsersCopyWithImpl<$Res>
    implements $ImportEmployeeUsersCopyWith<$Res> {
  _$ImportEmployeeUsersCopyWithImpl(this._self, this._then);

  final ImportEmployeeUsers _self;
  final $Res Function(ImportEmployeeUsers) _then;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? importEmployee = null,}) {
  return _then(ImportEmployeeUsers(
null == importEmployee ? _self.importEmployee : importEmployee // ignore: cast_nullable_to_non_nullable
as ImportEmployee,
  ));
}

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImportEmployeeCopyWith<$Res> get importEmployee {
  
  return $ImportEmployeeCopyWith<$Res>(_self.importEmployee, (value) {
    return _then(_self.copyWith(importEmployee: value));
  });
}
}

// dart format on
