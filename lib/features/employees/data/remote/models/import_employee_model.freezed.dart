// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'import_employee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ImportEmployeeModel {

@JsonKey(name: 'default_password') String get defaultPassword; List<ImportEmployeeModelData> get data;
/// Create a copy of ImportEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImportEmployeeModelCopyWith<ImportEmployeeModel> get copyWith => _$ImportEmployeeModelCopyWithImpl<ImportEmployeeModel>(this as ImportEmployeeModel, _$identity);

  /// Serializes this ImportEmployeeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImportEmployeeModel&&(identical(other.defaultPassword, defaultPassword) || other.defaultPassword == defaultPassword)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,defaultPassword,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ImportEmployeeModel(defaultPassword: $defaultPassword, data: $data)';
}


}

/// @nodoc
abstract mixin class $ImportEmployeeModelCopyWith<$Res>  {
  factory $ImportEmployeeModelCopyWith(ImportEmployeeModel value, $Res Function(ImportEmployeeModel) _then) = _$ImportEmployeeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'default_password') String defaultPassword, List<ImportEmployeeModelData> data
});




}
/// @nodoc
class _$ImportEmployeeModelCopyWithImpl<$Res>
    implements $ImportEmployeeModelCopyWith<$Res> {
  _$ImportEmployeeModelCopyWithImpl(this._self, this._then);

  final ImportEmployeeModel _self;
  final $Res Function(ImportEmployeeModel) _then;

/// Create a copy of ImportEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? defaultPassword = null,Object? data = null,}) {
  return _then(_self.copyWith(
defaultPassword: null == defaultPassword ? _self.defaultPassword : defaultPassword // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ImportEmployeeModelData>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ImportEmployeeModel implements ImportEmployeeModel {
   _ImportEmployeeModel({@JsonKey(name: 'default_password') required this.defaultPassword, required final  List<ImportEmployeeModelData> data}): _data = data;
  factory _ImportEmployeeModel.fromJson(Map<String, dynamic> json) => _$ImportEmployeeModelFromJson(json);

@override@JsonKey(name: 'default_password') final  String defaultPassword;
 final  List<ImportEmployeeModelData> _data;
@override List<ImportEmployeeModelData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ImportEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImportEmployeeModelCopyWith<_ImportEmployeeModel> get copyWith => __$ImportEmployeeModelCopyWithImpl<_ImportEmployeeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImportEmployeeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImportEmployeeModel&&(identical(other.defaultPassword, defaultPassword) || other.defaultPassword == defaultPassword)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,defaultPassword,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ImportEmployeeModel(defaultPassword: $defaultPassword, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ImportEmployeeModelCopyWith<$Res> implements $ImportEmployeeModelCopyWith<$Res> {
  factory _$ImportEmployeeModelCopyWith(_ImportEmployeeModel value, $Res Function(_ImportEmployeeModel) _then) = __$ImportEmployeeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'default_password') String defaultPassword, List<ImportEmployeeModelData> data
});




}
/// @nodoc
class __$ImportEmployeeModelCopyWithImpl<$Res>
    implements _$ImportEmployeeModelCopyWith<$Res> {
  __$ImportEmployeeModelCopyWithImpl(this._self, this._then);

  final _ImportEmployeeModel _self;
  final $Res Function(_ImportEmployeeModel) _then;

/// Create a copy of ImportEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? defaultPassword = null,Object? data = null,}) {
  return _then(_ImportEmployeeModel(
defaultPassword: null == defaultPassword ? _self.defaultPassword : defaultPassword // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ImportEmployeeModelData>,
  ));
}


}


/// @nodoc
mixin _$ImportEmployeeModelData {

@JsonKey(name: 'employee_number_id') String get employeeNumberId;@JsonKey(name: 'full_name') String get fullName; String get email;@JsonKey(name: 'phone_number') String get phoneNumber;@JsonKey(name: 'foundation_id') String get foundationId; String get gender; String get dob; String get address;@JsonKey(name: 'birth_place') String get birthPlace;@JsonKey(name: 'division_id') String? get divisionId;@JsonKey(name: 'education_level') String get educationLevel;@JsonKey(name: 'hired_date') String get hiredDate;@JsonKey(name: 'leave_date') String? get leaveDate;@JsonKey(name: 'employment_status') String get employmentStatus; String get position;@JsonKey(name: 'is_teaching') bool get isTeaching;
/// Create a copy of ImportEmployeeModelData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImportEmployeeModelDataCopyWith<ImportEmployeeModelData> get copyWith => _$ImportEmployeeModelDataCopyWithImpl<ImportEmployeeModelData>(this as ImportEmployeeModelData, _$identity);

  /// Serializes this ImportEmployeeModelData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImportEmployeeModelData&&(identical(other.employeeNumberId, employeeNumberId) || other.employeeNumberId == employeeNumberId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.address, address) || other.address == address)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.educationLevel, educationLevel) || other.educationLevel == educationLevel)&&(identical(other.hiredDate, hiredDate) || other.hiredDate == hiredDate)&&(identical(other.leaveDate, leaveDate) || other.leaveDate == leaveDate)&&(identical(other.employmentStatus, employmentStatus) || other.employmentStatus == employmentStatus)&&(identical(other.position, position) || other.position == position)&&(identical(other.isTeaching, isTeaching) || other.isTeaching == isTeaching));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employeeNumberId,fullName,email,phoneNumber,foundationId,gender,dob,address,birthPlace,divisionId,educationLevel,hiredDate,leaveDate,employmentStatus,position,isTeaching);

@override
String toString() {
  return 'ImportEmployeeModelData(employeeNumberId: $employeeNumberId, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, foundationId: $foundationId, gender: $gender, dob: $dob, address: $address, birthPlace: $birthPlace, divisionId: $divisionId, educationLevel: $educationLevel, hiredDate: $hiredDate, leaveDate: $leaveDate, employmentStatus: $employmentStatus, position: $position, isTeaching: $isTeaching)';
}


}

/// @nodoc
abstract mixin class $ImportEmployeeModelDataCopyWith<$Res>  {
  factory $ImportEmployeeModelDataCopyWith(ImportEmployeeModelData value, $Res Function(ImportEmployeeModelData) _then) = _$ImportEmployeeModelDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'employee_number_id') String employeeNumberId,@JsonKey(name: 'full_name') String fullName, String email,@JsonKey(name: 'phone_number') String phoneNumber,@JsonKey(name: 'foundation_id') String foundationId, String gender, String dob, String address,@JsonKey(name: 'birth_place') String birthPlace,@JsonKey(name: 'division_id') String? divisionId,@JsonKey(name: 'education_level') String educationLevel,@JsonKey(name: 'hired_date') String hiredDate,@JsonKey(name: 'leave_date') String? leaveDate,@JsonKey(name: 'employment_status') String employmentStatus, String position,@JsonKey(name: 'is_teaching') bool isTeaching
});




}
/// @nodoc
class _$ImportEmployeeModelDataCopyWithImpl<$Res>
    implements $ImportEmployeeModelDataCopyWith<$Res> {
  _$ImportEmployeeModelDataCopyWithImpl(this._self, this._then);

  final ImportEmployeeModelData _self;
  final $Res Function(ImportEmployeeModelData) _then;

/// Create a copy of ImportEmployeeModelData
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
@JsonSerializable()

class _ImportEmployeeModelData implements ImportEmployeeModelData {
   _ImportEmployeeModelData({@JsonKey(name: 'employee_number_id') required this.employeeNumberId, @JsonKey(name: 'full_name') required this.fullName, required this.email, @JsonKey(name: 'phone_number') required this.phoneNumber, @JsonKey(name: 'foundation_id') required this.foundationId, required this.gender, required this.dob, required this.address, @JsonKey(name: 'birth_place') required this.birthPlace, @JsonKey(name: 'division_id') this.divisionId, @JsonKey(name: 'education_level') required this.educationLevel, @JsonKey(name: 'hired_date') required this.hiredDate, @JsonKey(name: 'leave_date') this.leaveDate, @JsonKey(name: 'employment_status') required this.employmentStatus, required this.position, @JsonKey(name: 'is_teaching') required this.isTeaching});
  factory _ImportEmployeeModelData.fromJson(Map<String, dynamic> json) => _$ImportEmployeeModelDataFromJson(json);

@override@JsonKey(name: 'employee_number_id') final  String employeeNumberId;
@override@JsonKey(name: 'full_name') final  String fullName;
@override final  String email;
@override@JsonKey(name: 'phone_number') final  String phoneNumber;
@override@JsonKey(name: 'foundation_id') final  String foundationId;
@override final  String gender;
@override final  String dob;
@override final  String address;
@override@JsonKey(name: 'birth_place') final  String birthPlace;
@override@JsonKey(name: 'division_id') final  String? divisionId;
@override@JsonKey(name: 'education_level') final  String educationLevel;
@override@JsonKey(name: 'hired_date') final  String hiredDate;
@override@JsonKey(name: 'leave_date') final  String? leaveDate;
@override@JsonKey(name: 'employment_status') final  String employmentStatus;
@override final  String position;
@override@JsonKey(name: 'is_teaching') final  bool isTeaching;

/// Create a copy of ImportEmployeeModelData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImportEmployeeModelDataCopyWith<_ImportEmployeeModelData> get copyWith => __$ImportEmployeeModelDataCopyWithImpl<_ImportEmployeeModelData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImportEmployeeModelDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImportEmployeeModelData&&(identical(other.employeeNumberId, employeeNumberId) || other.employeeNumberId == employeeNumberId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.address, address) || other.address == address)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.educationLevel, educationLevel) || other.educationLevel == educationLevel)&&(identical(other.hiredDate, hiredDate) || other.hiredDate == hiredDate)&&(identical(other.leaveDate, leaveDate) || other.leaveDate == leaveDate)&&(identical(other.employmentStatus, employmentStatus) || other.employmentStatus == employmentStatus)&&(identical(other.position, position) || other.position == position)&&(identical(other.isTeaching, isTeaching) || other.isTeaching == isTeaching));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employeeNumberId,fullName,email,phoneNumber,foundationId,gender,dob,address,birthPlace,divisionId,educationLevel,hiredDate,leaveDate,employmentStatus,position,isTeaching);

@override
String toString() {
  return 'ImportEmployeeModelData(employeeNumberId: $employeeNumberId, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, foundationId: $foundationId, gender: $gender, dob: $dob, address: $address, birthPlace: $birthPlace, divisionId: $divisionId, educationLevel: $educationLevel, hiredDate: $hiredDate, leaveDate: $leaveDate, employmentStatus: $employmentStatus, position: $position, isTeaching: $isTeaching)';
}


}

/// @nodoc
abstract mixin class _$ImportEmployeeModelDataCopyWith<$Res> implements $ImportEmployeeModelDataCopyWith<$Res> {
  factory _$ImportEmployeeModelDataCopyWith(_ImportEmployeeModelData value, $Res Function(_ImportEmployeeModelData) _then) = __$ImportEmployeeModelDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'employee_number_id') String employeeNumberId,@JsonKey(name: 'full_name') String fullName, String email,@JsonKey(name: 'phone_number') String phoneNumber,@JsonKey(name: 'foundation_id') String foundationId, String gender, String dob, String address,@JsonKey(name: 'birth_place') String birthPlace,@JsonKey(name: 'division_id') String? divisionId,@JsonKey(name: 'education_level') String educationLevel,@JsonKey(name: 'hired_date') String hiredDate,@JsonKey(name: 'leave_date') String? leaveDate,@JsonKey(name: 'employment_status') String employmentStatus, String position,@JsonKey(name: 'is_teaching') bool isTeaching
});




}
/// @nodoc
class __$ImportEmployeeModelDataCopyWithImpl<$Res>
    implements _$ImportEmployeeModelDataCopyWith<$Res> {
  __$ImportEmployeeModelDataCopyWithImpl(this._self, this._then);

  final _ImportEmployeeModelData _self;
  final $Res Function(_ImportEmployeeModelData) _then;

/// Create a copy of ImportEmployeeModelData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? employeeNumberId = null,Object? fullName = null,Object? email = null,Object? phoneNumber = null,Object? foundationId = null,Object? gender = null,Object? dob = null,Object? address = null,Object? birthPlace = null,Object? divisionId = freezed,Object? educationLevel = null,Object? hiredDate = null,Object? leaveDate = freezed,Object? employmentStatus = null,Object? position = null,Object? isTeaching = null,}) {
  return _then(_ImportEmployeeModelData(
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
