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

@JsonKey(name: 'user_id', includeIfNull: false) String? get userId; int get schoolId; String get fullName; String get phoneNumber; String get gender; String get dob; String get birthPlace; String? get email; String? get address;@JsonKey(includeToJson: false) String? get createdAt; String? get imageUrl;@JsonKey(includeFromJson: false, includeToJson: false) UploadStorageModel? get uploadStorage;@JsonKey(name: 'schools', includeToJson: false) SchoolModel? get school;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.uploadStorage, uploadStorage) || other.uploadStorage == uploadStorage)&&(identical(other.school, school) || other.school == school));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,schoolId,fullName,phoneNumber,gender,dob,birthPlace,email,address,createdAt,imageUrl,uploadStorage,school);

@override
String toString() {
  return 'UserModel(userId: $userId, schoolId: $schoolId, fullName: $fullName, phoneNumber: $phoneNumber, gender: $gender, dob: $dob, birthPlace: $birthPlace, email: $email, address: $address, createdAt: $createdAt, imageUrl: $imageUrl, uploadStorage: $uploadStorage, school: $school)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id', includeIfNull: false) String? userId, int schoolId, String fullName, String phoneNumber, String gender, String dob, String birthPlace, String? email, String? address,@JsonKey(includeToJson: false) String? createdAt, String? imageUrl,@JsonKey(includeFromJson: false, includeToJson: false) UploadStorageModel? uploadStorage,@JsonKey(name: 'schools', includeToJson: false) SchoolModel? school
});


$SchoolModelCopyWith<$Res>? get school;

}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? schoolId = null,Object? fullName = null,Object? phoneNumber = null,Object? gender = null,Object? dob = null,Object? birthPlace = null,Object? email = freezed,Object? address = freezed,Object? createdAt = freezed,Object? imageUrl = freezed,Object? uploadStorage = freezed,Object? school = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,uploadStorage: freezed == uploadStorage ? _self.uploadStorage : uploadStorage // ignore: cast_nullable_to_non_nullable
as UploadStorageModel?,school: freezed == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as SchoolModel?,
  ));
}
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchoolModelCopyWith<$Res>? get school {
    if (_self.school == null) {
    return null;
  }

  return $SchoolModelCopyWith<$Res>(_self.school!, (value) {
    return _then(_self.copyWith(school: value));
  });
}
}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _UserModel implements UserModel {
   _UserModel({@JsonKey(name: 'user_id', includeIfNull: false) this.userId, required this.schoolId, required this.fullName, required this.phoneNumber, required this.gender, required this.dob, required this.birthPlace, this.email, this.address, @JsonKey(includeToJson: false) this.createdAt, this.imageUrl, @JsonKey(includeFromJson: false, includeToJson: false) this.uploadStorage, @JsonKey(name: 'schools', includeToJson: false) this.school});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override@JsonKey(name: 'user_id', includeIfNull: false) final  String? userId;
@override final  int schoolId;
@override final  String fullName;
@override final  String phoneNumber;
@override final  String gender;
@override final  String dob;
@override final  String birthPlace;
@override final  String? email;
@override final  String? address;
@override@JsonKey(includeToJson: false) final  String? createdAt;
@override final  String? imageUrl;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  UploadStorageModel? uploadStorage;
@override@JsonKey(name: 'schools', includeToJson: false) final  SchoolModel? school;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.uploadStorage, uploadStorage) || other.uploadStorage == uploadStorage)&&(identical(other.school, school) || other.school == school));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,schoolId,fullName,phoneNumber,gender,dob,birthPlace,email,address,createdAt,imageUrl,uploadStorage,school);

@override
String toString() {
  return 'UserModel(userId: $userId, schoolId: $schoolId, fullName: $fullName, phoneNumber: $phoneNumber, gender: $gender, dob: $dob, birthPlace: $birthPlace, email: $email, address: $address, createdAt: $createdAt, imageUrl: $imageUrl, uploadStorage: $uploadStorage, school: $school)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id', includeIfNull: false) String? userId, int schoolId, String fullName, String phoneNumber, String gender, String dob, String birthPlace, String? email, String? address,@JsonKey(includeToJson: false) String? createdAt, String? imageUrl,@JsonKey(includeFromJson: false, includeToJson: false) UploadStorageModel? uploadStorage,@JsonKey(name: 'schools', includeToJson: false) SchoolModel? school
});


@override $SchoolModelCopyWith<$Res>? get school;

}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? schoolId = null,Object? fullName = null,Object? phoneNumber = null,Object? gender = null,Object? dob = null,Object? birthPlace = null,Object? email = freezed,Object? address = freezed,Object? createdAt = freezed,Object? imageUrl = freezed,Object? uploadStorage = freezed,Object? school = freezed,}) {
  return _then(_UserModel(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,uploadStorage: freezed == uploadStorage ? _self.uploadStorage : uploadStorage // ignore: cast_nullable_to_non_nullable
as UploadStorageModel?,school: freezed == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as SchoolModel?,
  ));
}

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchoolModelCopyWith<$Res>? get school {
    if (_self.school == null) {
    return null;
  }

  return $SchoolModelCopyWith<$Res>(_self.school!, (value) {
    return _then(_self.copyWith(school: value));
  });
}
}

// dart format on
