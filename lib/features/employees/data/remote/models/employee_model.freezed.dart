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

@JsonKey(name: 'employee_id', includeToJson: false) String? get employeeId;@JsonKey(name: 'employee_number_id') String get employeeNumberId;@JsonKey(name: 'division_id') int? get divisionId;@JsonKey(name: 'employee_name') String get employeeName;@JsonKey(name: 'hired_date') String? get hiredDate;@JsonKey(name: 'leave_date') String? get leaveDate;@JsonKey(name: 'status', includeIfNull: false) String? get status;@JsonKey(name: 'is_teaching') bool? get isTeaching;@JsonKey(name: 'created_at', includeToJson: false) String? get createdAt;@JsonKey(name: 'updated_at', includeIfNull: false) String? get updatedAt;@JsonKey(name: 'users', includeToJson: false) UserModel? get user;@JsonKey(name: 'divisions', includeToJson: false) DivisionModel? get division;
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
    ..add(DiagnosticsProperty('employeeId', employeeId))..add(DiagnosticsProperty('employeeNumberId', employeeNumberId))..add(DiagnosticsProperty('divisionId', divisionId))..add(DiagnosticsProperty('employeeName', employeeName))..add(DiagnosticsProperty('hiredDate', hiredDate))..add(DiagnosticsProperty('leaveDate', leaveDate))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('isTeaching', isTeaching))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('division', division));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeModel&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeNumberId, employeeNumberId) || other.employeeNumberId == employeeNumberId)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.hiredDate, hiredDate) || other.hiredDate == hiredDate)&&(identical(other.leaveDate, leaveDate) || other.leaveDate == leaveDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.isTeaching, isTeaching) || other.isTeaching == isTeaching)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.user, user) || other.user == user)&&(identical(other.division, division) || other.division == division));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employeeId,employeeNumberId,divisionId,employeeName,hiredDate,leaveDate,status,isTeaching,createdAt,updatedAt,user,division);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmployeeModel(employeeId: $employeeId, employeeNumberId: $employeeNumberId, divisionId: $divisionId, employeeName: $employeeName, hiredDate: $hiredDate, leaveDate: $leaveDate, status: $status, isTeaching: $isTeaching, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, division: $division)';
}


}

/// @nodoc
abstract mixin class $EmployeeModelCopyWith<$Res>  {
  factory $EmployeeModelCopyWith(EmployeeModel value, $Res Function(EmployeeModel) _then) = _$EmployeeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'employee_id', includeToJson: false) String? employeeId,@JsonKey(name: 'employee_number_id') String employeeNumberId,@JsonKey(name: 'division_id') int? divisionId,@JsonKey(name: 'employee_name') String employeeName,@JsonKey(name: 'hired_date') String? hiredDate,@JsonKey(name: 'leave_date') String? leaveDate,@JsonKey(name: 'status', includeIfNull: false) String? status,@JsonKey(name: 'is_teaching') bool? isTeaching,@JsonKey(name: 'created_at', includeToJson: false) String? createdAt,@JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt,@JsonKey(name: 'users', includeToJson: false) UserModel? user,@JsonKey(name: 'divisions', includeToJson: false) DivisionModel? division
});


$UserModelCopyWith<$Res>? get user;$DivisionModelCopyWith<$Res>? get division;

}
/// @nodoc
class _$EmployeeModelCopyWithImpl<$Res>
    implements $EmployeeModelCopyWith<$Res> {
  _$EmployeeModelCopyWithImpl(this._self, this._then);

  final EmployeeModel _self;
  final $Res Function(EmployeeModel) _then;

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? employeeId = freezed,Object? employeeNumberId = null,Object? divisionId = freezed,Object? employeeName = null,Object? hiredDate = freezed,Object? leaveDate = freezed,Object? status = freezed,Object? isTeaching = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? user = freezed,Object? division = freezed,}) {
  return _then(_self.copyWith(
employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,employeeNumberId: null == employeeNumberId ? _self.employeeNumberId : employeeNumberId // ignore: cast_nullable_to_non_nullable
as String,divisionId: freezed == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as int?,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,hiredDate: freezed == hiredDate ? _self.hiredDate : hiredDate // ignore: cast_nullable_to_non_nullable
as String?,leaveDate: freezed == leaveDate ? _self.leaveDate : leaveDate // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,isTeaching: freezed == isTeaching ? _self.isTeaching : isTeaching // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,division: freezed == division ? _self.division : division // ignore: cast_nullable_to_non_nullable
as DivisionModel?,
  ));
}
/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DivisionModelCopyWith<$Res>? get division {
    if (_self.division == null) {
    return null;
  }

  return $DivisionModelCopyWith<$Res>(_self.division!, (value) {
    return _then(_self.copyWith(division: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _EmployeeModel with DiagnosticableTreeMixin implements EmployeeModel {
  const _EmployeeModel({@JsonKey(name: 'employee_id', includeToJson: false) this.employeeId, @JsonKey(name: 'employee_number_id') required this.employeeNumberId, @JsonKey(name: 'division_id') this.divisionId, @JsonKey(name: 'employee_name') required this.employeeName, @JsonKey(name: 'hired_date') this.hiredDate, @JsonKey(name: 'leave_date') this.leaveDate, @JsonKey(name: 'status', includeIfNull: false) this.status, @JsonKey(name: 'is_teaching') this.isTeaching, @JsonKey(name: 'created_at', includeToJson: false) this.createdAt, @JsonKey(name: 'updated_at', includeIfNull: false) this.updatedAt, @JsonKey(name: 'users', includeToJson: false) this.user, @JsonKey(name: 'divisions', includeToJson: false) this.division});
  factory _EmployeeModel.fromJson(Map<String, dynamic> json) => _$EmployeeModelFromJson(json);

@override@JsonKey(name: 'employee_id', includeToJson: false) final  String? employeeId;
@override@JsonKey(name: 'employee_number_id') final  String employeeNumberId;
@override@JsonKey(name: 'division_id') final  int? divisionId;
@override@JsonKey(name: 'employee_name') final  String employeeName;
@override@JsonKey(name: 'hired_date') final  String? hiredDate;
@override@JsonKey(name: 'leave_date') final  String? leaveDate;
@override@JsonKey(name: 'status', includeIfNull: false) final  String? status;
@override@JsonKey(name: 'is_teaching') final  bool? isTeaching;
@override@JsonKey(name: 'created_at', includeToJson: false) final  String? createdAt;
@override@JsonKey(name: 'updated_at', includeIfNull: false) final  String? updatedAt;
@override@JsonKey(name: 'users', includeToJson: false) final  UserModel? user;
@override@JsonKey(name: 'divisions', includeToJson: false) final  DivisionModel? division;

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
    ..add(DiagnosticsProperty('employeeId', employeeId))..add(DiagnosticsProperty('employeeNumberId', employeeNumberId))..add(DiagnosticsProperty('divisionId', divisionId))..add(DiagnosticsProperty('employeeName', employeeName))..add(DiagnosticsProperty('hiredDate', hiredDate))..add(DiagnosticsProperty('leaveDate', leaveDate))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('isTeaching', isTeaching))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('division', division));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeModel&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeNumberId, employeeNumberId) || other.employeeNumberId == employeeNumberId)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.hiredDate, hiredDate) || other.hiredDate == hiredDate)&&(identical(other.leaveDate, leaveDate) || other.leaveDate == leaveDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.isTeaching, isTeaching) || other.isTeaching == isTeaching)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.user, user) || other.user == user)&&(identical(other.division, division) || other.division == division));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employeeId,employeeNumberId,divisionId,employeeName,hiredDate,leaveDate,status,isTeaching,createdAt,updatedAt,user,division);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmployeeModel(employeeId: $employeeId, employeeNumberId: $employeeNumberId, divisionId: $divisionId, employeeName: $employeeName, hiredDate: $hiredDate, leaveDate: $leaveDate, status: $status, isTeaching: $isTeaching, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, division: $division)';
}


}

/// @nodoc
abstract mixin class _$EmployeeModelCopyWith<$Res> implements $EmployeeModelCopyWith<$Res> {
  factory _$EmployeeModelCopyWith(_EmployeeModel value, $Res Function(_EmployeeModel) _then) = __$EmployeeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'employee_id', includeToJson: false) String? employeeId,@JsonKey(name: 'employee_number_id') String employeeNumberId,@JsonKey(name: 'division_id') int? divisionId,@JsonKey(name: 'employee_name') String employeeName,@JsonKey(name: 'hired_date') String? hiredDate,@JsonKey(name: 'leave_date') String? leaveDate,@JsonKey(name: 'status', includeIfNull: false) String? status,@JsonKey(name: 'is_teaching') bool? isTeaching,@JsonKey(name: 'created_at', includeToJson: false) String? createdAt,@JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt,@JsonKey(name: 'users', includeToJson: false) UserModel? user,@JsonKey(name: 'divisions', includeToJson: false) DivisionModel? division
});


@override $UserModelCopyWith<$Res>? get user;@override $DivisionModelCopyWith<$Res>? get division;

}
/// @nodoc
class __$EmployeeModelCopyWithImpl<$Res>
    implements _$EmployeeModelCopyWith<$Res> {
  __$EmployeeModelCopyWithImpl(this._self, this._then);

  final _EmployeeModel _self;
  final $Res Function(_EmployeeModel) _then;

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? employeeId = freezed,Object? employeeNumberId = null,Object? divisionId = freezed,Object? employeeName = null,Object? hiredDate = freezed,Object? leaveDate = freezed,Object? status = freezed,Object? isTeaching = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? user = freezed,Object? division = freezed,}) {
  return _then(_EmployeeModel(
employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,employeeNumberId: null == employeeNumberId ? _self.employeeNumberId : employeeNumberId // ignore: cast_nullable_to_non_nullable
as String,divisionId: freezed == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as int?,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,hiredDate: freezed == hiredDate ? _self.hiredDate : hiredDate // ignore: cast_nullable_to_non_nullable
as String?,leaveDate: freezed == leaveDate ? _self.leaveDate : leaveDate // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,isTeaching: freezed == isTeaching ? _self.isTeaching : isTeaching // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,division: freezed == division ? _self.division : division // ignore: cast_nullable_to_non_nullable
as DivisionModel?,
  ));
}

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DivisionModelCopyWith<$Res>? get division {
    if (_self.division == null) {
    return null;
  }

  return $DivisionModelCopyWith<$Res>(_self.division!, (value) {
    return _then(_self.copyWith(division: value));
  });
}
}

// dart format on
