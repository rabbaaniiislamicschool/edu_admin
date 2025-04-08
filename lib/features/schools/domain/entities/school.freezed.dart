// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$School {

 int? get schoolId; String get schoolName; String? get address; String? get phoneNumber; String? get email; double? get latitude; double? get longitude; String? get createdAt; String? get updatedAt; String? get imageUrl; int get branchId; Branch? get branch; UploadStorage? get uploadStorage;
/// Create a copy of School
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchoolCopyWith<School> get copyWith => _$SchoolCopyWithImpl<School>(this as School, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is School&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.schoolName, schoolName) || other.schoolName == schoolName)&&(identical(other.address, address) || other.address == address)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.uploadStorage, uploadStorage) || other.uploadStorage == uploadStorage));
}


@override
int get hashCode => Object.hash(runtimeType,schoolId,schoolName,address,phoneNumber,email,latitude,longitude,createdAt,updatedAt,imageUrl,branchId,branch,uploadStorage);

@override
String toString() {
  return 'School(schoolId: $schoolId, schoolName: $schoolName, address: $address, phoneNumber: $phoneNumber, email: $email, latitude: $latitude, longitude: $longitude, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl, branchId: $branchId, branch: $branch, uploadStorage: $uploadStorage)';
}


}

/// @nodoc
abstract mixin class $SchoolCopyWith<$Res>  {
  factory $SchoolCopyWith(School value, $Res Function(School) _then) = _$SchoolCopyWithImpl;
@useResult
$Res call({
 int? schoolId, String schoolName, String? address, String? phoneNumber, String? email, double? latitude, double? longitude, String? createdAt, String? updatedAt, String? imageUrl, int branchId, Branch? branch, UploadStorage? uploadStorage
});


$BranchCopyWith<$Res>? get branch;

}
/// @nodoc
class _$SchoolCopyWithImpl<$Res>
    implements $SchoolCopyWith<$Res> {
  _$SchoolCopyWithImpl(this._self, this._then);

  final School _self;
  final $Res Function(School) _then;

/// Create a copy of School
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? schoolId = freezed,Object? schoolName = null,Object? address = freezed,Object? phoneNumber = freezed,Object? email = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? imageUrl = freezed,Object? branchId = null,Object? branch = freezed,Object? uploadStorage = freezed,}) {
  return _then(_self.copyWith(
schoolId: freezed == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int?,schoolName: null == schoolName ? _self.schoolName : schoolName // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as Branch?,uploadStorage: freezed == uploadStorage ? _self.uploadStorage : uploadStorage // ignore: cast_nullable_to_non_nullable
as UploadStorage?,
  ));
}
/// Create a copy of School
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $BranchCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}
}


/// @nodoc


class _School implements School {
   _School({this.schoolId, required this.schoolName, this.address, this.phoneNumber, this.email, this.latitude, this.longitude, this.createdAt, this.updatedAt, this.imageUrl, required this.branchId, this.branch, this.uploadStorage});
  

@override final  int? schoolId;
@override final  String schoolName;
@override final  String? address;
@override final  String? phoneNumber;
@override final  String? email;
@override final  double? latitude;
@override final  double? longitude;
@override final  String? createdAt;
@override final  String? updatedAt;
@override final  String? imageUrl;
@override final  int branchId;
@override final  Branch? branch;
@override final  UploadStorage? uploadStorage;

/// Create a copy of School
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchoolCopyWith<_School> get copyWith => __$SchoolCopyWithImpl<_School>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _School&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.schoolName, schoolName) || other.schoolName == schoolName)&&(identical(other.address, address) || other.address == address)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.uploadStorage, uploadStorage) || other.uploadStorage == uploadStorage));
}


@override
int get hashCode => Object.hash(runtimeType,schoolId,schoolName,address,phoneNumber,email,latitude,longitude,createdAt,updatedAt,imageUrl,branchId,branch,uploadStorage);

@override
String toString() {
  return 'School(schoolId: $schoolId, schoolName: $schoolName, address: $address, phoneNumber: $phoneNumber, email: $email, latitude: $latitude, longitude: $longitude, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl, branchId: $branchId, branch: $branch, uploadStorage: $uploadStorage)';
}


}

/// @nodoc
abstract mixin class _$SchoolCopyWith<$Res> implements $SchoolCopyWith<$Res> {
  factory _$SchoolCopyWith(_School value, $Res Function(_School) _then) = __$SchoolCopyWithImpl;
@override @useResult
$Res call({
 int? schoolId, String schoolName, String? address, String? phoneNumber, String? email, double? latitude, double? longitude, String? createdAt, String? updatedAt, String? imageUrl, int branchId, Branch? branch, UploadStorage? uploadStorage
});


@override $BranchCopyWith<$Res>? get branch;

}
/// @nodoc
class __$SchoolCopyWithImpl<$Res>
    implements _$SchoolCopyWith<$Res> {
  __$SchoolCopyWithImpl(this._self, this._then);

  final _School _self;
  final $Res Function(_School) _then;

/// Create a copy of School
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? schoolId = freezed,Object? schoolName = null,Object? address = freezed,Object? phoneNumber = freezed,Object? email = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? imageUrl = freezed,Object? branchId = null,Object? branch = freezed,Object? uploadStorage = freezed,}) {
  return _then(_School(
schoolId: freezed == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int?,schoolName: null == schoolName ? _self.schoolName : schoolName // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as Branch?,uploadStorage: freezed == uploadStorage ? _self.uploadStorage : uploadStorage // ignore: cast_nullable_to_non_nullable
as UploadStorage?,
  ));
}

/// Create a copy of School
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $BranchCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}
}

// dart format on
