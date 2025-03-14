// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Branch {

 int? get branchId; String get foundationId; String get branchName; String? get address; String? get phoneNumber; String? get email; double? get latitude; double? get longitude; String? get createdAt; String? get updatedAt; String? get imageUrl; Foundation? get foundation; UploadStorage? get uploadStorage;
/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchCopyWith<Branch> get copyWith => _$BranchCopyWithImpl<Branch>(this as Branch, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Branch&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.address, address) || other.address == address)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.foundation, foundation) || other.foundation == foundation)&&(identical(other.uploadStorage, uploadStorage) || other.uploadStorage == uploadStorage));
}


@override
int get hashCode => Object.hash(runtimeType,branchId,foundationId,branchName,address,phoneNumber,email,latitude,longitude,createdAt,updatedAt,imageUrl,foundation,uploadStorage);

@override
String toString() {
  return 'Branch(branchId: $branchId, foundationId: $foundationId, branchName: $branchName, address: $address, phoneNumber: $phoneNumber, email: $email, latitude: $latitude, longitude: $longitude, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl, foundation: $foundation, uploadStorage: $uploadStorage)';
}


}

/// @nodoc
abstract mixin class $BranchCopyWith<$Res>  {
  factory $BranchCopyWith(Branch value, $Res Function(Branch) _then) = _$BranchCopyWithImpl;
@useResult
$Res call({
 int? branchId, String foundationId, String branchName, String? address, String? phoneNumber, String? email, double? latitude, double? longitude, String? createdAt, String? updatedAt, String? imageUrl, Foundation? foundation, UploadStorage? uploadStorage
});


$FoundationCopyWith<$Res>? get foundation;

}
/// @nodoc
class _$BranchCopyWithImpl<$Res>
    implements $BranchCopyWith<$Res> {
  _$BranchCopyWithImpl(this._self, this._then);

  final Branch _self;
  final $Res Function(Branch) _then;

/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? branchId = freezed,Object? foundationId = null,Object? branchName = null,Object? address = freezed,Object? phoneNumber = freezed,Object? email = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? imageUrl = freezed,Object? foundation = freezed,Object? uploadStorage = freezed,}) {
  return _then(_self.copyWith(
branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int?,foundationId: null == foundationId ? _self.foundationId : foundationId // ignore: cast_nullable_to_non_nullable
as String,branchName: null == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,foundation: freezed == foundation ? _self.foundation : foundation // ignore: cast_nullable_to_non_nullable
as Foundation?,uploadStorage: freezed == uploadStorage ? _self.uploadStorage : uploadStorage // ignore: cast_nullable_to_non_nullable
as UploadStorage?,
  ));
}
/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoundationCopyWith<$Res>? get foundation {
    if (_self.foundation == null) {
    return null;
  }

  return $FoundationCopyWith<$Res>(_self.foundation!, (value) {
    return _then(_self.copyWith(foundation: value));
  });
}
}


/// @nodoc


class _Branch implements Branch {
   _Branch({this.branchId, required this.foundationId, required this.branchName, this.address, this.phoneNumber, this.email, this.latitude, this.longitude, this.createdAt, this.updatedAt, this.imageUrl, this.foundation, this.uploadStorage});
  

@override final  int? branchId;
@override final  String foundationId;
@override final  String branchName;
@override final  String? address;
@override final  String? phoneNumber;
@override final  String? email;
@override final  double? latitude;
@override final  double? longitude;
@override final  String? createdAt;
@override final  String? updatedAt;
@override final  String? imageUrl;
@override final  Foundation? foundation;
@override final  UploadStorage? uploadStorage;

/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchCopyWith<_Branch> get copyWith => __$BranchCopyWithImpl<_Branch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Branch&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.address, address) || other.address == address)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.foundation, foundation) || other.foundation == foundation)&&(identical(other.uploadStorage, uploadStorage) || other.uploadStorage == uploadStorage));
}


@override
int get hashCode => Object.hash(runtimeType,branchId,foundationId,branchName,address,phoneNumber,email,latitude,longitude,createdAt,updatedAt,imageUrl,foundation,uploadStorage);

@override
String toString() {
  return 'Branch(branchId: $branchId, foundationId: $foundationId, branchName: $branchName, address: $address, phoneNumber: $phoneNumber, email: $email, latitude: $latitude, longitude: $longitude, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl, foundation: $foundation, uploadStorage: $uploadStorage)';
}


}

/// @nodoc
abstract mixin class _$BranchCopyWith<$Res> implements $BranchCopyWith<$Res> {
  factory _$BranchCopyWith(_Branch value, $Res Function(_Branch) _then) = __$BranchCopyWithImpl;
@override @useResult
$Res call({
 int? branchId, String foundationId, String branchName, String? address, String? phoneNumber, String? email, double? latitude, double? longitude, String? createdAt, String? updatedAt, String? imageUrl, Foundation? foundation, UploadStorage? uploadStorage
});


@override $FoundationCopyWith<$Res>? get foundation;

}
/// @nodoc
class __$BranchCopyWithImpl<$Res>
    implements _$BranchCopyWith<$Res> {
  __$BranchCopyWithImpl(this._self, this._then);

  final _Branch _self;
  final $Res Function(_Branch) _then;

/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branchId = freezed,Object? foundationId = null,Object? branchName = null,Object? address = freezed,Object? phoneNumber = freezed,Object? email = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? imageUrl = freezed,Object? foundation = freezed,Object? uploadStorage = freezed,}) {
  return _then(_Branch(
branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int?,foundationId: null == foundationId ? _self.foundationId : foundationId // ignore: cast_nullable_to_non_nullable
as String,branchName: null == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,foundation: freezed == foundation ? _self.foundation : foundation // ignore: cast_nullable_to_non_nullable
as Foundation?,uploadStorage: freezed == uploadStorage ? _self.uploadStorage : uploadStorage // ignore: cast_nullable_to_non_nullable
as UploadStorage?,
  ));
}

/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoundationCopyWith<$Res>? get foundation {
    if (_self.foundation == null) {
    return null;
  }

  return $FoundationCopyWith<$Res>(_self.foundation!, (value) {
    return _then(_self.copyWith(foundation: value));
  });
}
}

// dart format on
