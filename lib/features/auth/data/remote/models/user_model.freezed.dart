// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

 String get userId; String get foundationId; String get fullName; String get email; String get phoneNumber; String get gender; String get dob; String? get address; String get createdAt; String? get birthPlace;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.address, address) || other.address == address)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,foundationId,fullName,email,phoneNumber,gender,dob,address,createdAt,birthPlace);

@override
String toString() {
  return 'UserModel(userId: $userId, foundationId: $foundationId, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, gender: $gender, dob: $dob, address: $address, createdAt: $createdAt, birthPlace: $birthPlace)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 String userId, String foundationId, String fullName, String email, String phoneNumber, String gender, String dob, String? address, String createdAt, String? birthPlace
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? foundationId = null,Object? fullName = null,Object? email = null,Object? phoneNumber = null,Object? gender = null,Object? dob = null,Object? address = freezed,Object? createdAt = null,Object? birthPlace = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,foundationId: null == foundationId ? _self.foundationId : foundationId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,birthPlace: freezed == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _UserModel implements UserModel {
   _UserModel({required this.userId, required this.foundationId, required this.fullName, required this.email, required this.phoneNumber, required this.gender, required this.dob, this.address, required this.createdAt, this.birthPlace});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override final  String userId;
@override final  String foundationId;
@override final  String fullName;
@override final  String email;
@override final  String phoneNumber;
@override final  String gender;
@override final  String dob;
@override final  String? address;
@override final  String createdAt;
@override final  String? birthPlace;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.address, address) || other.address == address)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,foundationId,fullName,email,phoneNumber,gender,dob,address,createdAt,birthPlace);

@override
String toString() {
  return 'UserModel(userId: $userId, foundationId: $foundationId, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, gender: $gender, dob: $dob, address: $address, createdAt: $createdAt, birthPlace: $birthPlace)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 String userId, String foundationId, String fullName, String email, String phoneNumber, String gender, String dob, String? address, String createdAt, String? birthPlace
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? foundationId = null,Object? fullName = null,Object? email = null,Object? phoneNumber = null,Object? gender = null,Object? dob = null,Object? address = freezed,Object? createdAt = null,Object? birthPlace = freezed,}) {
  return _then(_UserModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,foundationId: null == foundationId ? _self.foundationId : foundationId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,birthPlace: freezed == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
