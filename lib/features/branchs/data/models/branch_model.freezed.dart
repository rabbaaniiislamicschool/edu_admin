// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BranchModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'branch_id', includeToJson: false) int? get branchId;@JsonKey(name: 'foundation_id') String get foundationId;@JsonKey(name: 'branch_name') String get branchName; String? get address;@JsonKey(name: 'phone_number') String? get phoneNumber; String? get email; double? get latitude; double? get longitude;@JsonKey(name: 'created_at', includeToJson: false) String? get createdAt;@JsonKey(name: 'updated_at', includeIfNull: false) String? get updatedAt;@JsonKey(name: 'image_url', includeIfNull: false) String? get imageUrl;@JsonKey(includeToJson: false) FoundationModel? get foundation;@JsonKey(includeFromJson: false, includeToJson: false) UploadStorageModel? get uploadStorage;
/// Create a copy of BranchModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchModelCopyWith<BranchModel> get copyWith => _$BranchModelCopyWithImpl<BranchModel>(this as BranchModel, _$identity);

  /// Serializes this BranchModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BranchModel'))
    ..add(DiagnosticsProperty('branchId', branchId))..add(DiagnosticsProperty('foundationId', foundationId))..add(DiagnosticsProperty('branchName', branchName))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('phoneNumber', phoneNumber))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('imageUrl', imageUrl))..add(DiagnosticsProperty('foundation', foundation))..add(DiagnosticsProperty('uploadStorage', uploadStorage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchModel&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.address, address) || other.address == address)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.foundation, foundation) || other.foundation == foundation)&&(identical(other.uploadStorage, uploadStorage) || other.uploadStorage == uploadStorage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,branchId,foundationId,branchName,address,phoneNumber,email,latitude,longitude,createdAt,updatedAt,imageUrl,foundation,uploadStorage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BranchModel(branchId: $branchId, foundationId: $foundationId, branchName: $branchName, address: $address, phoneNumber: $phoneNumber, email: $email, latitude: $latitude, longitude: $longitude, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl, foundation: $foundation, uploadStorage: $uploadStorage)';
}


}

/// @nodoc
abstract mixin class $BranchModelCopyWith<$Res>  {
  factory $BranchModelCopyWith(BranchModel value, $Res Function(BranchModel) _then) = _$BranchModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'branch_id', includeToJson: false) int? branchId,@JsonKey(name: 'foundation_id') String foundationId,@JsonKey(name: 'branch_name') String branchName, String? address,@JsonKey(name: 'phone_number') String? phoneNumber, String? email, double? latitude, double? longitude,@JsonKey(name: 'created_at', includeToJson: false) String? createdAt,@JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt,@JsonKey(name: 'image_url', includeIfNull: false) String? imageUrl,@JsonKey(includeToJson: false) FoundationModel? foundation,@JsonKey(includeFromJson: false, includeToJson: false) UploadStorageModel? uploadStorage
});


$FoundationModelCopyWith<$Res>? get foundation;

}
/// @nodoc
class _$BranchModelCopyWithImpl<$Res>
    implements $BranchModelCopyWith<$Res> {
  _$BranchModelCopyWithImpl(this._self, this._then);

  final BranchModel _self;
  final $Res Function(BranchModel) _then;

/// Create a copy of BranchModel
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
as FoundationModel?,uploadStorage: freezed == uploadStorage ? _self.uploadStorage : uploadStorage // ignore: cast_nullable_to_non_nullable
as UploadStorageModel?,
  ));
}
/// Create a copy of BranchModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoundationModelCopyWith<$Res>? get foundation {
    if (_self.foundation == null) {
    return null;
  }

  return $FoundationModelCopyWith<$Res>(_self.foundation!, (value) {
    return _then(_self.copyWith(foundation: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _BranchModel with DiagnosticableTreeMixin implements BranchModel {
  const _BranchModel({@JsonKey(name: 'branch_id', includeToJson: false) this.branchId, @JsonKey(name: 'foundation_id') required this.foundationId, @JsonKey(name: 'branch_name') required this.branchName, this.address, @JsonKey(name: 'phone_number') this.phoneNumber, this.email, this.latitude, this.longitude, @JsonKey(name: 'created_at', includeToJson: false) this.createdAt, @JsonKey(name: 'updated_at', includeIfNull: false) this.updatedAt, @JsonKey(name: 'image_url', includeIfNull: false) this.imageUrl, @JsonKey(includeToJson: false) this.foundation, @JsonKey(includeFromJson: false, includeToJson: false) this.uploadStorage});
  factory _BranchModel.fromJson(Map<String, dynamic> json) => _$BranchModelFromJson(json);

@override@JsonKey(name: 'branch_id', includeToJson: false) final  int? branchId;
@override@JsonKey(name: 'foundation_id') final  String foundationId;
@override@JsonKey(name: 'branch_name') final  String branchName;
@override final  String? address;
@override@JsonKey(name: 'phone_number') final  String? phoneNumber;
@override final  String? email;
@override final  double? latitude;
@override final  double? longitude;
@override@JsonKey(name: 'created_at', includeToJson: false) final  String? createdAt;
@override@JsonKey(name: 'updated_at', includeIfNull: false) final  String? updatedAt;
@override@JsonKey(name: 'image_url', includeIfNull: false) final  String? imageUrl;
@override@JsonKey(includeToJson: false) final  FoundationModel? foundation;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  UploadStorageModel? uploadStorage;

/// Create a copy of BranchModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchModelCopyWith<_BranchModel> get copyWith => __$BranchModelCopyWithImpl<_BranchModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BranchModel'))
    ..add(DiagnosticsProperty('branchId', branchId))..add(DiagnosticsProperty('foundationId', foundationId))..add(DiagnosticsProperty('branchName', branchName))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('phoneNumber', phoneNumber))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('imageUrl', imageUrl))..add(DiagnosticsProperty('foundation', foundation))..add(DiagnosticsProperty('uploadStorage', uploadStorage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchModel&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.address, address) || other.address == address)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.foundation, foundation) || other.foundation == foundation)&&(identical(other.uploadStorage, uploadStorage) || other.uploadStorage == uploadStorage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,branchId,foundationId,branchName,address,phoneNumber,email,latitude,longitude,createdAt,updatedAt,imageUrl,foundation,uploadStorage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BranchModel(branchId: $branchId, foundationId: $foundationId, branchName: $branchName, address: $address, phoneNumber: $phoneNumber, email: $email, latitude: $latitude, longitude: $longitude, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl, foundation: $foundation, uploadStorage: $uploadStorage)';
}


}

/// @nodoc
abstract mixin class _$BranchModelCopyWith<$Res> implements $BranchModelCopyWith<$Res> {
  factory _$BranchModelCopyWith(_BranchModel value, $Res Function(_BranchModel) _then) = __$BranchModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'branch_id', includeToJson: false) int? branchId,@JsonKey(name: 'foundation_id') String foundationId,@JsonKey(name: 'branch_name') String branchName, String? address,@JsonKey(name: 'phone_number') String? phoneNumber, String? email, double? latitude, double? longitude,@JsonKey(name: 'created_at', includeToJson: false) String? createdAt,@JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt,@JsonKey(name: 'image_url', includeIfNull: false) String? imageUrl,@JsonKey(includeToJson: false) FoundationModel? foundation,@JsonKey(includeFromJson: false, includeToJson: false) UploadStorageModel? uploadStorage
});


@override $FoundationModelCopyWith<$Res>? get foundation;

}
/// @nodoc
class __$BranchModelCopyWithImpl<$Res>
    implements _$BranchModelCopyWith<$Res> {
  __$BranchModelCopyWithImpl(this._self, this._then);

  final _BranchModel _self;
  final $Res Function(_BranchModel) _then;

/// Create a copy of BranchModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branchId = freezed,Object? foundationId = null,Object? branchName = null,Object? address = freezed,Object? phoneNumber = freezed,Object? email = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? imageUrl = freezed,Object? foundation = freezed,Object? uploadStorage = freezed,}) {
  return _then(_BranchModel(
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
as FoundationModel?,uploadStorage: freezed == uploadStorage ? _self.uploadStorage : uploadStorage // ignore: cast_nullable_to_non_nullable
as UploadStorageModel?,
  ));
}

/// Create a copy of BranchModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoundationModelCopyWith<$Res>? get foundation {
    if (_self.foundation == null) {
    return null;
  }

  return $FoundationModelCopyWith<$Res>(_self.foundation!, (value) {
    return _then(_self.copyWith(foundation: value));
  });
}
}

// dart format on
