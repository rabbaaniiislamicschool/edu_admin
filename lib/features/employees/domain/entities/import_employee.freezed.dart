// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'import_employee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImportEmployee {

 String get defaultPassword; List<ImportEmployeeData> get data;
/// Create a copy of ImportEmployee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImportEmployeeCopyWith<ImportEmployee> get copyWith => _$ImportEmployeeCopyWithImpl<ImportEmployee>(this as ImportEmployee, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImportEmployee&&(identical(other.defaultPassword, defaultPassword) || other.defaultPassword == defaultPassword)&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,defaultPassword,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ImportEmployee(defaultPassword: $defaultPassword, data: $data)';
}


}

/// @nodoc
abstract mixin class $ImportEmployeeCopyWith<$Res>  {
  factory $ImportEmployeeCopyWith(ImportEmployee value, $Res Function(ImportEmployee) _then) = _$ImportEmployeeCopyWithImpl;
@useResult
$Res call({
 String defaultPassword, List<ImportEmployeeData> data
});




}
/// @nodoc
class _$ImportEmployeeCopyWithImpl<$Res>
    implements $ImportEmployeeCopyWith<$Res> {
  _$ImportEmployeeCopyWithImpl(this._self, this._then);

  final ImportEmployee _self;
  final $Res Function(ImportEmployee) _then;

/// Create a copy of ImportEmployee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? defaultPassword = null,Object? data = null,}) {
  return _then(_self.copyWith(
defaultPassword: null == defaultPassword ? _self.defaultPassword : defaultPassword // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ImportEmployeeData>,
  ));
}

}


/// @nodoc


class _ImportEmployee implements ImportEmployee {
   _ImportEmployee({required this.defaultPassword, required final  List<ImportEmployeeData> data}): _data = data;
  

@override final  String defaultPassword;
 final  List<ImportEmployeeData> _data;
@override List<ImportEmployeeData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ImportEmployee
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImportEmployeeCopyWith<_ImportEmployee> get copyWith => __$ImportEmployeeCopyWithImpl<_ImportEmployee>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImportEmployee&&(identical(other.defaultPassword, defaultPassword) || other.defaultPassword == defaultPassword)&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,defaultPassword,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ImportEmployee(defaultPassword: $defaultPassword, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ImportEmployeeCopyWith<$Res> implements $ImportEmployeeCopyWith<$Res> {
  factory _$ImportEmployeeCopyWith(_ImportEmployee value, $Res Function(_ImportEmployee) _then) = __$ImportEmployeeCopyWithImpl;
@override @useResult
$Res call({
 String defaultPassword, List<ImportEmployeeData> data
});




}
/// @nodoc
class __$ImportEmployeeCopyWithImpl<$Res>
    implements _$ImportEmployeeCopyWith<$Res> {
  __$ImportEmployeeCopyWithImpl(this._self, this._then);

  final _ImportEmployee _self;
  final $Res Function(_ImportEmployee) _then;

/// Create a copy of ImportEmployee
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? defaultPassword = null,Object? data = null,}) {
  return _then(_ImportEmployee(
defaultPassword: null == defaultPassword ? _self.defaultPassword : defaultPassword // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ImportEmployeeData>,
  ));
}


}

/// @nodoc
mixin _$ImportEmployeeData {

 String get employeeNumberId; String get fullName; String get email; String get phoneNumber; String get foundationId; String get gender; String get dob; String get address; String get birthPlace; String? get divisionId; String get educationLevel; String get hiredDate; String? get leaveDate; String get employmentStatus; String get position; bool get isTeaching;
/// Create a copy of ImportEmployeeData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImportEmployeeDataCopyWith<ImportEmployeeData> get copyWith => _$ImportEmployeeDataCopyWithImpl<ImportEmployeeData>(this as ImportEmployeeData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImportEmployeeData&&(identical(other.employeeNumberId, employeeNumberId) || other.employeeNumberId == employeeNumberId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.address, address) || other.address == address)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.educationLevel, educationLevel) || other.educationLevel == educationLevel)&&(identical(other.hiredDate, hiredDate) || other.hiredDate == hiredDate)&&(identical(other.leaveDate, leaveDate) || other.leaveDate == leaveDate)&&(identical(other.employmentStatus, employmentStatus) || other.employmentStatus == employmentStatus)&&(identical(other.position, position) || other.position == position)&&(identical(other.isTeaching, isTeaching) || other.isTeaching == isTeaching));
}


@override
int get hashCode => Object.hash(runtimeType,employeeNumberId,fullName,email,phoneNumber,foundationId,gender,dob,address,birthPlace,divisionId,educationLevel,hiredDate,leaveDate,employmentStatus,position,isTeaching);

@override
String toString() {
  return 'ImportEmployeeData(employeeNumberId: $employeeNumberId, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, foundationId: $foundationId, gender: $gender, dob: $dob, address: $address, birthPlace: $birthPlace, divisionId: $divisionId, educationLevel: $educationLevel, hiredDate: $hiredDate, leaveDate: $leaveDate, employmentStatus: $employmentStatus, position: $position, isTeaching: $isTeaching)';
}


}

/// @nodoc
abstract mixin class $ImportEmployeeDataCopyWith<$Res>  {
  factory $ImportEmployeeDataCopyWith(ImportEmployeeData value, $Res Function(ImportEmployeeData) _then) = _$ImportEmployeeDataCopyWithImpl;
@useResult
$Res call({
 String employeeNumberId, String fullName, String email, String phoneNumber, String foundationId, String gender, String dob, String address, String birthPlace, String? divisionId, String educationLevel, String hiredDate, String? leaveDate, String employmentStatus, String position, bool isTeaching
});




}
/// @nodoc
class _$ImportEmployeeDataCopyWithImpl<$Res>
    implements $ImportEmployeeDataCopyWith<$Res> {
  _$ImportEmployeeDataCopyWithImpl(this._self, this._then);

  final ImportEmployeeData _self;
  final $Res Function(ImportEmployeeData) _then;

/// Create a copy of ImportEmployeeData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? employeeNumberId = null,Object? fullName = null,Object? email = null,Object? phoneNumber = null,Object? foundationId = null,Object? gender = null,Object? dob = null,Object? address = null,Object? birthPlace = null,Object? divisionId = freezed,Object? educationLevel = null,Object? hiredDate = null,Object? leaveDate = freezed,Object? employmentStatus = null,Object? position = null,Object? isTeaching = null,}) {
  return _then(_self.copyWith(
employeeNumberId: null == employeeNumberId ? _self.employeeNumberId : employeeNumberId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,foundationId: null == foundationId ? _self.foundationId : foundationId // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,divisionId: freezed == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as String?,educationLevel: null == educationLevel ? _self.educationLevel : educationLevel // ignore: cast_nullable_to_non_nullable
as String,hiredDate: null == hiredDate ? _self.hiredDate : hiredDate // ignore: cast_nullable_to_non_nullable
as String,leaveDate: freezed == leaveDate ? _self.leaveDate : leaveDate // ignore: cast_nullable_to_non_nullable
as String?,employmentStatus: null == employmentStatus ? _self.employmentStatus : employmentStatus // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,isTeaching: null == isTeaching ? _self.isTeaching : isTeaching // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _ImportEmployeeData implements ImportEmployeeData {
   _ImportEmployeeData({required this.employeeNumberId, required this.fullName, required this.email, required this.phoneNumber, required this.foundationId, required this.gender, required this.dob, required this.address, required this.birthPlace, this.divisionId, required this.educationLevel, required this.hiredDate, this.leaveDate, required this.employmentStatus, required this.position, required this.isTeaching});
  

@override final  String employeeNumberId;
@override final  String fullName;
@override final  String email;
@override final  String phoneNumber;
@override final  String foundationId;
@override final  String gender;
@override final  String dob;
@override final  String address;
@override final  String birthPlace;
@override final  String? divisionId;
@override final  String educationLevel;
@override final  String hiredDate;
@override final  String? leaveDate;
@override final  String employmentStatus;
@override final  String position;
@override final  bool isTeaching;

/// Create a copy of ImportEmployeeData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImportEmployeeDataCopyWith<_ImportEmployeeData> get copyWith => __$ImportEmployeeDataCopyWithImpl<_ImportEmployeeData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImportEmployeeData&&(identical(other.employeeNumberId, employeeNumberId) || other.employeeNumberId == employeeNumberId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.address, address) || other.address == address)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.educationLevel, educationLevel) || other.educationLevel == educationLevel)&&(identical(other.hiredDate, hiredDate) || other.hiredDate == hiredDate)&&(identical(other.leaveDate, leaveDate) || other.leaveDate == leaveDate)&&(identical(other.employmentStatus, employmentStatus) || other.employmentStatus == employmentStatus)&&(identical(other.position, position) || other.position == position)&&(identical(other.isTeaching, isTeaching) || other.isTeaching == isTeaching));
}


@override
int get hashCode => Object.hash(runtimeType,employeeNumberId,fullName,email,phoneNumber,foundationId,gender,dob,address,birthPlace,divisionId,educationLevel,hiredDate,leaveDate,employmentStatus,position,isTeaching);

@override
String toString() {
  return 'ImportEmployeeData(employeeNumberId: $employeeNumberId, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, foundationId: $foundationId, gender: $gender, dob: $dob, address: $address, birthPlace: $birthPlace, divisionId: $divisionId, educationLevel: $educationLevel, hiredDate: $hiredDate, leaveDate: $leaveDate, employmentStatus: $employmentStatus, position: $position, isTeaching: $isTeaching)';
}


}

/// @nodoc
abstract mixin class _$ImportEmployeeDataCopyWith<$Res> implements $ImportEmployeeDataCopyWith<$Res> {
  factory _$ImportEmployeeDataCopyWith(_ImportEmployeeData value, $Res Function(_ImportEmployeeData) _then) = __$ImportEmployeeDataCopyWithImpl;
@override @useResult
$Res call({
 String employeeNumberId, String fullName, String email, String phoneNumber, String foundationId, String gender, String dob, String address, String birthPlace, String? divisionId, String educationLevel, String hiredDate, String? leaveDate, String employmentStatus, String position, bool isTeaching
});




}
/// @nodoc
class __$ImportEmployeeDataCopyWithImpl<$Res>
    implements _$ImportEmployeeDataCopyWith<$Res> {
  __$ImportEmployeeDataCopyWithImpl(this._self, this._then);

  final _ImportEmployeeData _self;
  final $Res Function(_ImportEmployeeData) _then;

/// Create a copy of ImportEmployeeData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? employeeNumberId = null,Object? fullName = null,Object? email = null,Object? phoneNumber = null,Object? foundationId = null,Object? gender = null,Object? dob = null,Object? address = null,Object? birthPlace = null,Object? divisionId = freezed,Object? educationLevel = null,Object? hiredDate = null,Object? leaveDate = freezed,Object? employmentStatus = null,Object? position = null,Object? isTeaching = null,}) {
  return _then(_ImportEmployeeData(
employeeNumberId: null == employeeNumberId ? _self.employeeNumberId : employeeNumberId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,foundationId: null == foundationId ? _self.foundationId : foundationId // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,divisionId: freezed == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as String?,educationLevel: null == educationLevel ? _self.educationLevel : educationLevel // ignore: cast_nullable_to_non_nullable
as String,hiredDate: null == hiredDate ? _self.hiredDate : hiredDate // ignore: cast_nullable_to_non_nullable
as String,leaveDate: freezed == leaveDate ? _self.leaveDate : leaveDate // ignore: cast_nullable_to_non_nullable
as String?,employmentStatus: null == employmentStatus ? _self.employmentStatus : employmentStatus // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,isTeaching: null == isTeaching ? _self.isTeaching : isTeaching // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
