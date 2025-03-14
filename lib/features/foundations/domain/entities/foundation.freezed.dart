// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'foundation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Foundation {

 String? get foundationId; String get foundationName; String? get address; String? get phoneNumber; String? get email; String? get createdAt; String? get updatedAt; String? get merchantCode; String? get merchantApiKey; String? get websiteUrl; String? get imageUrl; bool? get isAdmin; UploadStorage? get uploadStorage;
/// Create a copy of Foundation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoundationCopyWith<Foundation> get copyWith => _$FoundationCopyWithImpl<Foundation>(this as Foundation, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Foundation&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.foundationName, foundationName) || other.foundationName == foundationName)&&(identical(other.address, address) || other.address == address)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.merchantCode, merchantCode) || other.merchantCode == merchantCode)&&(identical(other.merchantApiKey, merchantApiKey) || other.merchantApiKey == merchantApiKey)&&(identical(other.websiteUrl, websiteUrl) || other.websiteUrl == websiteUrl)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin)&&(identical(other.uploadStorage, uploadStorage) || other.uploadStorage == uploadStorage));
}


@override
int get hashCode => Object.hash(runtimeType,foundationId,foundationName,address,phoneNumber,email,createdAt,updatedAt,merchantCode,merchantApiKey,websiteUrl,imageUrl,isAdmin,uploadStorage);

@override
String toString() {
  return 'Foundation(foundationId: $foundationId, foundationName: $foundationName, address: $address, phoneNumber: $phoneNumber, email: $email, createdAt: $createdAt, updatedAt: $updatedAt, merchantCode: $merchantCode, merchantApiKey: $merchantApiKey, websiteUrl: $websiteUrl, imageUrl: $imageUrl, isAdmin: $isAdmin, uploadStorage: $uploadStorage)';
}


}

/// @nodoc
abstract mixin class $FoundationCopyWith<$Res>  {
  factory $FoundationCopyWith(Foundation value, $Res Function(Foundation) _then) = _$FoundationCopyWithImpl;
@useResult
$Res call({
 String? foundationId, String foundationName, String? address, String? phoneNumber, String? email, String? createdAt, String? updatedAt, String? merchantCode, String? merchantApiKey, String? websiteUrl, String? imageUrl, bool? isAdmin, UploadStorage? uploadStorage
});




}
/// @nodoc
class _$FoundationCopyWithImpl<$Res>
    implements $FoundationCopyWith<$Res> {
  _$FoundationCopyWithImpl(this._self, this._then);

  final Foundation _self;
  final $Res Function(Foundation) _then;

/// Create a copy of Foundation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? foundationId = freezed,Object? foundationName = null,Object? address = freezed,Object? phoneNumber = freezed,Object? email = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? merchantCode = freezed,Object? merchantApiKey = freezed,Object? websiteUrl = freezed,Object? imageUrl = freezed,Object? isAdmin = freezed,Object? uploadStorage = freezed,}) {
  return _then(_self.copyWith(
foundationId: freezed == foundationId ? _self.foundationId : foundationId // ignore: cast_nullable_to_non_nullable
as String?,foundationName: null == foundationName ? _self.foundationName : foundationName // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,merchantCode: freezed == merchantCode ? _self.merchantCode : merchantCode // ignore: cast_nullable_to_non_nullable
as String?,merchantApiKey: freezed == merchantApiKey ? _self.merchantApiKey : merchantApiKey // ignore: cast_nullable_to_non_nullable
as String?,websiteUrl: freezed == websiteUrl ? _self.websiteUrl : websiteUrl // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,isAdmin: freezed == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool?,uploadStorage: freezed == uploadStorage ? _self.uploadStorage : uploadStorage // ignore: cast_nullable_to_non_nullable
as UploadStorage?,
  ));
}

}


/// @nodoc


class _Foundation implements Foundation {
   _Foundation({this.foundationId, required this.foundationName, this.address, this.phoneNumber, this.email, this.createdAt, this.updatedAt, this.merchantCode, this.merchantApiKey, this.websiteUrl, this.imageUrl, this.isAdmin, this.uploadStorage});
  

@override final  String? foundationId;
@override final  String foundationName;
@override final  String? address;
@override final  String? phoneNumber;
@override final  String? email;
@override final  String? createdAt;
@override final  String? updatedAt;
@override final  String? merchantCode;
@override final  String? merchantApiKey;
@override final  String? websiteUrl;
@override final  String? imageUrl;
@override final  bool? isAdmin;
@override final  UploadStorage? uploadStorage;

/// Create a copy of Foundation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoundationCopyWith<_Foundation> get copyWith => __$FoundationCopyWithImpl<_Foundation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Foundation&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.foundationName, foundationName) || other.foundationName == foundationName)&&(identical(other.address, address) || other.address == address)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.merchantCode, merchantCode) || other.merchantCode == merchantCode)&&(identical(other.merchantApiKey, merchantApiKey) || other.merchantApiKey == merchantApiKey)&&(identical(other.websiteUrl, websiteUrl) || other.websiteUrl == websiteUrl)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin)&&(identical(other.uploadStorage, uploadStorage) || other.uploadStorage == uploadStorage));
}


@override
int get hashCode => Object.hash(runtimeType,foundationId,foundationName,address,phoneNumber,email,createdAt,updatedAt,merchantCode,merchantApiKey,websiteUrl,imageUrl,isAdmin,uploadStorage);

@override
String toString() {
  return 'Foundation(foundationId: $foundationId, foundationName: $foundationName, address: $address, phoneNumber: $phoneNumber, email: $email, createdAt: $createdAt, updatedAt: $updatedAt, merchantCode: $merchantCode, merchantApiKey: $merchantApiKey, websiteUrl: $websiteUrl, imageUrl: $imageUrl, isAdmin: $isAdmin, uploadStorage: $uploadStorage)';
}


}

/// @nodoc
abstract mixin class _$FoundationCopyWith<$Res> implements $FoundationCopyWith<$Res> {
  factory _$FoundationCopyWith(_Foundation value, $Res Function(_Foundation) _then) = __$FoundationCopyWithImpl;
@override @useResult
$Res call({
 String? foundationId, String foundationName, String? address, String? phoneNumber, String? email, String? createdAt, String? updatedAt, String? merchantCode, String? merchantApiKey, String? websiteUrl, String? imageUrl, bool? isAdmin, UploadStorage? uploadStorage
});




}
/// @nodoc
class __$FoundationCopyWithImpl<$Res>
    implements _$FoundationCopyWith<$Res> {
  __$FoundationCopyWithImpl(this._self, this._then);

  final _Foundation _self;
  final $Res Function(_Foundation) _then;

/// Create a copy of Foundation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? foundationId = freezed,Object? foundationName = null,Object? address = freezed,Object? phoneNumber = freezed,Object? email = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? merchantCode = freezed,Object? merchantApiKey = freezed,Object? websiteUrl = freezed,Object? imageUrl = freezed,Object? isAdmin = freezed,Object? uploadStorage = freezed,}) {
  return _then(_Foundation(
foundationId: freezed == foundationId ? _self.foundationId : foundationId // ignore: cast_nullable_to_non_nullable
as String?,foundationName: null == foundationName ? _self.foundationName : foundationName // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,merchantCode: freezed == merchantCode ? _self.merchantCode : merchantCode // ignore: cast_nullable_to_non_nullable
as String?,merchantApiKey: freezed == merchantApiKey ? _self.merchantApiKey : merchantApiKey // ignore: cast_nullable_to_non_nullable
as String?,websiteUrl: freezed == websiteUrl ? _self.websiteUrl : websiteUrl // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,isAdmin: freezed == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool?,uploadStorage: freezed == uploadStorage ? _self.uploadStorage : uploadStorage // ignore: cast_nullable_to_non_nullable
as UploadStorage?,
  ));
}


}

// dart format on
