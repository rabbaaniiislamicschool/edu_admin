// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmployeeState implements DiagnosticableTreeMixin {

 EmployeeStatus get status; String? get errorMessage; String? get successMessage; List<Employee>? get employees; Employee? get employee;
/// Create a copy of EmployeeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeStateCopyWith<EmployeeState> get copyWith => _$EmployeeStateCopyWithImpl<EmployeeState>(this as EmployeeState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmployeeState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('errorMessage', errorMessage))..add(DiagnosticsProperty('successMessage', successMessage))..add(DiagnosticsProperty('employees', employees))..add(DiagnosticsProperty('employee', employee));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other.employees, employees)&&(identical(other.employee, employee) || other.employee == employee));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(employees),employee);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmployeeState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, employees: $employees, employee: $employee)';
}


}

/// @nodoc
abstract mixin class $EmployeeStateCopyWith<$Res>  {
  factory $EmployeeStateCopyWith(EmployeeState value, $Res Function(EmployeeState) _then) = _$EmployeeStateCopyWithImpl;
@useResult
$Res call({
 EmployeeStatus status, String? errorMessage, String? successMessage, List<Employee>? employees, Employee? employee
});


$EmployeeCopyWith<$Res>? get employee;

}
/// @nodoc
class _$EmployeeStateCopyWithImpl<$Res>
    implements $EmployeeStateCopyWith<$Res> {
  _$EmployeeStateCopyWithImpl(this._self, this._then);

  final EmployeeState _self;
  final $Res Function(EmployeeState) _then;

/// Create a copy of EmployeeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? employees = freezed,Object? employee = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EmployeeStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,employees: freezed == employees ? _self.employees : employees // ignore: cast_nullable_to_non_nullable
as List<Employee>?,employee: freezed == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as Employee?,
  ));
}
/// Create a copy of EmployeeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeCopyWith<$Res>? get employee {
    if (_self.employee == null) {
    return null;
  }

  return $EmployeeCopyWith<$Res>(_self.employee!, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}


/// @nodoc


class _EmployeeState with DiagnosticableTreeMixin implements EmployeeState {
  const _EmployeeState({this.status = EmployeeStatus.initial, this.errorMessage, this.successMessage, final  List<Employee>? employees, this.employee}): _employees = employees;
  

@override@JsonKey() final  EmployeeStatus status;
@override final  String? errorMessage;
@override final  String? successMessage;
 final  List<Employee>? _employees;
@override List<Employee>? get employees {
  final value = _employees;
  if (value == null) return null;
  if (_employees is EqualUnmodifiableListView) return _employees;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Employee? employee;

/// Create a copy of EmployeeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeStateCopyWith<_EmployeeState> get copyWith => __$EmployeeStateCopyWithImpl<_EmployeeState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmployeeState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('errorMessage', errorMessage))..add(DiagnosticsProperty('successMessage', successMessage))..add(DiagnosticsProperty('employees', employees))..add(DiagnosticsProperty('employee', employee));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other._employees, _employees)&&(identical(other.employee, employee) || other.employee == employee));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(_employees),employee);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmployeeState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, employees: $employees, employee: $employee)';
}


}

/// @nodoc
abstract mixin class _$EmployeeStateCopyWith<$Res> implements $EmployeeStateCopyWith<$Res> {
  factory _$EmployeeStateCopyWith(_EmployeeState value, $Res Function(_EmployeeState) _then) = __$EmployeeStateCopyWithImpl;
@override @useResult
$Res call({
 EmployeeStatus status, String? errorMessage, String? successMessage, List<Employee>? employees, Employee? employee
});


@override $EmployeeCopyWith<$Res>? get employee;

}
/// @nodoc
class __$EmployeeStateCopyWithImpl<$Res>
    implements _$EmployeeStateCopyWith<$Res> {
  __$EmployeeStateCopyWithImpl(this._self, this._then);

  final _EmployeeState _self;
  final $Res Function(_EmployeeState) _then;

/// Create a copy of EmployeeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? employees = freezed,Object? employee = freezed,}) {
  return _then(_EmployeeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EmployeeStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,employees: freezed == employees ? _self._employees : employees // ignore: cast_nullable_to_non_nullable
as List<Employee>?,employee: freezed == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as Employee?,
  ));
}

/// Create a copy of EmployeeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeCopyWith<$Res>? get employee {
    if (_self.employee == null) {
    return null;
  }

  return $EmployeeCopyWith<$Res>(_self.employee!, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}

// dart format on
