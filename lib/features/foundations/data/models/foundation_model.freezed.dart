// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'foundation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FoundationModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'foundation_id', includeToJson: false) String? get foundationId;@JsonKey(name: 'foundation_name') String get foundationName; String? get address;@JsonKey(name: 'phone_number') String? get phoneNumber; String? get email;@JsonKey(name: 'created_at', includeToJson: false) String? get createdAt;@JsonKey(name: 'updated_at', includeIfNull: false) String? get updatedAt;@JsonKey(name: 'merchant_code') String? get merchantCode;@JsonKey(name: 'merchant_api_key') String? get merchantApiKey;@JsonKey(name: 'website_url') String? get websiteUrl;@JsonKey(name: 'image_url') String? get imageUrl;@JsonKey(name: 'is_admin', includeToJson: false) bool? get isAdmin;@JsonKey(includeFromJson: false, includeToJson: false) UploadStorageModel? get uploadStorage;
/// Create a copy of FoundationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoundationModelCopyWith<FoundationModel> get copyWith => _$FoundationModelCopyWithImpl<FoundationModel>(this as FoundationModel, _$identity);

  /// Serializes this FoundationModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FoundationModel'))
    ..add(DiagnosticsProperty('foundationId', foundationId))..add(DiagnosticsProperty('foundationName', foundationName))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('phoneNumber', phoneNumber))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('merchantCode', merchantCode))..add(DiagnosticsProperty('merchantApiKey', merchantApiKey))..add(DiagnosticsProperty('websiteUrl', websiteUrl))..add(DiagnosticsProperty('imageUrl', imageUrl))..add(DiagnosticsProperty('isAdmin', isAdmin))..add(DiagnosticsProperty('uploadStorage', uploadStorage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoundationModel&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.foundationName, foundationName) || other.foundationName == foundationName)&&(identical(other.address, address) || other.address == address)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.merchantCode, merchantCode) || other.merchantCode == merchantCode)&&(identical(other.merchantApiKey, merchantApiKey) || other.merchantApiKey == merchantApiKey)&&(identical(other.websiteUrl, websiteUrl) || other.websiteUrl == websiteUrl)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin)&&(identical(other.uploadStorage, uploadStorage) || other.uploadStorage == uploadStorage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foundationId,foundationName,address,phoneNumber,email,createdAt,updatedAt,merchantCode,merchantApiKey,websiteUrl,imageUrl,isAdmin,uploadStorage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FoundationModel(foundationId: $foundationId, foundationName: $foundationName, address: $address, phoneNumber: $phoneNumber, email: $email, createdAt: $createdAt, updatedAt: $updatedAt, merchantCode: $merchantCode, merchantApiKey: $merchantApiKey, websiteUrl: $websiteUrl, imageUrl: $imageUrl, isAdmin: $isAdmin, uploadStorage: $uploadStorage)';
}


}

/// @nodoc
abstract mixin class $FoundationModelCopyWith<$Res>  {
  factory $FoundationModelCopyWith(FoundationModel value, $Res Function(FoundationModel) _then) = _$FoundationModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'foundation_id', includeToJson: false) String? foundationId,@JsonKey(name: 'foundation_name') String foundationName, String? address,@JsonKey(name: 'phone_number') String? phoneNumber, String? email,@JsonKey(name: 'created_at', includeToJson: false) String? createdAt,@JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt,@JsonKey(name: 'merchant_code') String? merchantCode,@JsonKey(name: 'merchant_api_key') String? merchantApiKey,@JsonKey(name: 'website_url') String? websiteUrl,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'is_admin', includeToJson: false) bool? isAdmin,@JsonKey(includeFromJson: false, includeToJson: false) UploadStorageModel? uploadStorage
});




}
/// @nodoc
class _$FoundationModelCopyWithImpl<$Res>
    implements $FoundationModelCopyWith<$Res> {
  _$FoundationModelCopyWithImpl(this._self, this._then);

  final FoundationModel _self;
  final $Res Function(FoundationModel) _then;

/// Create a copy of FoundationModel
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
as UploadStorageModel?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _FoundationModel with DiagnosticableTreeMixin implements FoundationModel {
  const _FoundationModel({@JsonKey(name: 'foundation_id', includeToJson: false) this.foundationId, @JsonKey(name: 'foundation_name') required this.foundationName, this.address, @JsonKey(name: 'phone_number') this.phoneNumber, this.email, @JsonKey(name: 'created_at', includeToJson: false) this.createdAt, @JsonKey(name: 'updated_at', includeIfNull: false) this.updatedAt, @JsonKey(name: 'merchant_code') this.merchantCode, @JsonKey(name: 'merchant_api_key') this.merchantApiKey, @JsonKey(name: 'website_url') this.websiteUrl, @JsonKey(name: 'image_url') this.imageUrl, @JsonKey(name: 'is_admin', includeToJson: false) this.isAdmin, @JsonKey(includeFromJson: false, includeToJson: false) this.uploadStorage});
  factory _FoundationModel.fromJson(Map<String, dynamic> json) => _$FoundationModelFromJson(json);

@override@JsonKey(name: 'foundation_id', includeToJson: false) final  String? foundationId;
@override@JsonKey(name: 'foundation_name') final  String foundationName;
@override final  String? address;
@override@JsonKey(name: 'phone_number') final  String? phoneNumber;
@override final  String? email;
@override@JsonKey(name: 'created_at', includeToJson: false) final  String? createdAt;
@override@JsonKey(name: 'updated_at', includeIfNull: false) final  String? updatedAt;
@override@JsonKey(name: 'merchant_code') final  String? merchantCode;
@override@JsonKey(name: 'merchant_api_key') final  String? merchantApiKey;
@override@JsonKey(name: 'website_url') final  String? websiteUrl;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override@JsonKey(name: 'is_admin', includeToJson: false) final  bool? isAdmin;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  UploadStorageModel? uploadStorage;

/// Create a copy of FoundationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoundationModelCopyWith<_FoundationModel> get copyWith => __$FoundationModelCopyWithImpl<_FoundationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoundationModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FoundationModel'))
    ..add(DiagnosticsProperty('foundationId', foundationId))..add(DiagnosticsProperty('foundationName', foundationName))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('phoneNumber', phoneNumber))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('merchantCode', merchantCode))..add(DiagnosticsProperty('merchantApiKey', merchantApiKey))..add(DiagnosticsProperty('websiteUrl', websiteUrl))..add(DiagnosticsProperty('imageUrl', imageUrl))..add(DiagnosticsProperty('isAdmin', isAdmin))..add(DiagnosticsProperty('uploadStorage', uploadStorage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoundationModel&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.foundationName, foundationName) || other.foundationName == foundationName)&&(identical(other.address, address) || other.address == address)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.merchantCode, merchantCode) || other.merchantCode == merchantCode)&&(identical(other.merchantApiKey, merchantApiKey) || other.merchantApiKey == merchantApiKey)&&(identical(other.websiteUrl, websiteUrl) || other.websiteUrl == websiteUrl)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin)&&(identical(other.uploadStorage, uploadStorage) || other.uploadStorage == uploadStorage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foundationId,foundationName,address,phoneNumber,email,createdAt,updatedAt,merchantCode,merchantApiKey,websiteUrl,imageUrl,isAdmin,uploadStorage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FoundationModel(foundationId: $foundationId, foundationName: $foundationName, address: $address, phoneNumber: $phoneNumber, email: $email, createdAt: $createdAt, updatedAt: $updatedAt, merchantCode: $merchantCode, merchantApiKey: $merchantApiKey, websiteUrl: $websiteUrl, imageUrl: $imageUrl, isAdmin: $isAdmin, uploadStorage: $uploadStorage)';
}


}

/// @nodoc
abstract mixin class _$FoundationModelCopyWith<$Res> implements $FoundationModelCopyWith<$Res> {
  factory _$FoundationModelCopyWith(_FoundationModel value, $Res Function(_FoundationModel) _then) = __$FoundationModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'foundation_id', includeToJson: false) String? foundationId,@JsonKey(name: 'foundation_name') String foundationName, String? address,@JsonKey(name: 'phone_number') String? phoneNumber, String? email,@JsonKey(name: 'created_at', includeToJson: false) String? createdAt,@JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt,@JsonKey(name: 'merchant_code') String? merchantCode,@JsonKey(name: 'merchant_api_key') String? merchantApiKey,@JsonKey(name: 'website_url') String? websiteUrl,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'is_admin', includeToJson: false) bool? isAdmin,@JsonKey(includeFromJson: false, includeToJson: false) UploadStorageModel? uploadStorage
});




}
/// @nodoc
class __$FoundationModelCopyWithImpl<$Res>
    implements _$FoundationModelCopyWith<$Res> {
  __$FoundationModelCopyWithImpl(this._self, this._then);

  final _FoundationModel _self;
  final $Res Function(_FoundationModel) _then;

/// Create a copy of FoundationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? foundationId = freezed,Object? foundationName = null,Object? address = freezed,Object? phoneNumber = freezed,Object? email = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? merchantCode = freezed,Object? merchantApiKey = freezed,Object? websiteUrl = freezed,Object? imageUrl = freezed,Object? isAdmin = freezed,Object? uploadStorage = freezed,}) {
  return _then(_FoundationModel(
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
as UploadStorageModel?,
  ));
}


}

// dart format on
