// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SchoolModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'school_id', includeToJson: false) int get schoolId;@JsonKey(name: 'school_name') String get schoolName; String? get address;@JsonKey(name: 'phone_number') String? get phoneNumber; String? get email; double? get latitude; double? get longitude;@JsonKey(name: 'created_at', includeToJson: false) String? get createdAt;@JsonKey(name: 'updated_at', includeIfNull: false) String? get updatedAt;@JsonKey(name: 'branch_id') int get branchId;
/// Create a copy of SchoolModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchoolModelCopyWith<SchoolModel> get copyWith => _$SchoolModelCopyWithImpl<SchoolModel>(this as SchoolModel, _$identity);

  /// Serializes this SchoolModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SchoolModel'))
    ..add(DiagnosticsProperty('schoolId', schoolId))..add(DiagnosticsProperty('schoolName', schoolName))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('phoneNumber', phoneNumber))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('branchId', branchId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SchoolModel&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.schoolName, schoolName) || other.schoolName == schoolName)&&(identical(other.address, address) || other.address == address)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.branchId, branchId) || other.branchId == branchId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,schoolId,schoolName,address,phoneNumber,email,latitude,longitude,createdAt,updatedAt,branchId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SchoolModel(schoolId: $schoolId, schoolName: $schoolName, address: $address, phoneNumber: $phoneNumber, email: $email, latitude: $latitude, longitude: $longitude, createdAt: $createdAt, updatedAt: $updatedAt, branchId: $branchId)';
}


}

/// @nodoc
abstract mixin class $SchoolModelCopyWith<$Res>  {
  factory $SchoolModelCopyWith(SchoolModel value, $Res Function(SchoolModel) _then) = _$SchoolModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'school_id', includeToJson: false) int schoolId,@JsonKey(name: 'school_name') String schoolName, String? address,@JsonKey(name: 'phone_number') String? phoneNumber, String? email, double? latitude, double? longitude,@JsonKey(name: 'created_at', includeToJson: false) String? createdAt,@JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt,@JsonKey(name: 'branch_id') int branchId
});




}
/// @nodoc
class _$SchoolModelCopyWithImpl<$Res>
    implements $SchoolModelCopyWith<$Res> {
  _$SchoolModelCopyWithImpl(this._self, this._then);

  final SchoolModel _self;
  final $Res Function(SchoolModel) _then;

/// Create a copy of SchoolModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? schoolId = null,Object? schoolName = null,Object? address = freezed,Object? phoneNumber = freezed,Object? email = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? branchId = null,}) {
  return _then(_self.copyWith(
schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int,schoolName: null == schoolName ? _self.schoolName : schoolName // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SchoolModel with DiagnosticableTreeMixin implements SchoolModel {
  const _SchoolModel({@JsonKey(name: 'school_id', includeToJson: false) required this.schoolId, @JsonKey(name: 'school_name') required this.schoolName, this.address, @JsonKey(name: 'phone_number') this.phoneNumber, this.email, this.latitude, this.longitude, @JsonKey(name: 'created_at', includeToJson: false) this.createdAt, @JsonKey(name: 'updated_at', includeIfNull: false) this.updatedAt, @JsonKey(name: 'branch_id') required this.branchId});
  factory _SchoolModel.fromJson(Map<String, dynamic> json) => _$SchoolModelFromJson(json);

@override@JsonKey(name: 'school_id', includeToJson: false) final  int schoolId;
@override@JsonKey(name: 'school_name') final  String schoolName;
@override final  String? address;
@override@JsonKey(name: 'phone_number') final  String? phoneNumber;
@override final  String? email;
@override final  double? latitude;
@override final  double? longitude;
@override@JsonKey(name: 'created_at', includeToJson: false) final  String? createdAt;
@override@JsonKey(name: 'updated_at', includeIfNull: false) final  String? updatedAt;
@override@JsonKey(name: 'branch_id') final  int branchId;

/// Create a copy of SchoolModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchoolModelCopyWith<_SchoolModel> get copyWith => __$SchoolModelCopyWithImpl<_SchoolModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SchoolModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SchoolModel'))
    ..add(DiagnosticsProperty('schoolId', schoolId))..add(DiagnosticsProperty('schoolName', schoolName))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('phoneNumber', phoneNumber))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('branchId', branchId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SchoolModel&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.schoolName, schoolName) || other.schoolName == schoolName)&&(identical(other.address, address) || other.address == address)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.branchId, branchId) || other.branchId == branchId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,schoolId,schoolName,address,phoneNumber,email,latitude,longitude,createdAt,updatedAt,branchId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SchoolModel(schoolId: $schoolId, schoolName: $schoolName, address: $address, phoneNumber: $phoneNumber, email: $email, latitude: $latitude, longitude: $longitude, createdAt: $createdAt, updatedAt: $updatedAt, branchId: $branchId)';
}


}

/// @nodoc
abstract mixin class _$SchoolModelCopyWith<$Res> implements $SchoolModelCopyWith<$Res> {
  factory _$SchoolModelCopyWith(_SchoolModel value, $Res Function(_SchoolModel) _then) = __$SchoolModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'school_id', includeToJson: false) int schoolId,@JsonKey(name: 'school_name') String schoolName, String? address,@JsonKey(name: 'phone_number') String? phoneNumber, String? email, double? latitude, double? longitude,@JsonKey(name: 'created_at', includeToJson: false) String? createdAt,@JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt,@JsonKey(name: 'branch_id') int branchId
});




}
/// @nodoc
class __$SchoolModelCopyWithImpl<$Res>
    implements _$SchoolModelCopyWith<$Res> {
  __$SchoolModelCopyWithImpl(this._self, this._then);

  final _SchoolModel _self;
  final $Res Function(_SchoolModel) _then;

/// Create a copy of SchoolModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? schoolId = null,Object? schoolName = null,Object? address = freezed,Object? phoneNumber = freezed,Object? email = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? branchId = null,}) {
  return _then(_SchoolModel(
schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int,schoolName: null == schoolName ? _self.schoolName : schoolName // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
