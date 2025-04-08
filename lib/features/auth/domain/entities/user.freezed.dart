// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$User {

 String? get userId; int get schoolId; String get fullName; String get phoneNumber; String get gender; String get dob; String get birthPlace; String? get email; String? get address; String? get createdAt; String? get imageUrl; UploadStorage? get uploadStrorage; School? get school;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.uploadStrorage, uploadStrorage) || other.uploadStrorage == uploadStrorage)&&(identical(other.school, school) || other.school == school));
}


@override
int get hashCode => Object.hash(runtimeType,userId,schoolId,fullName,phoneNumber,gender,dob,birthPlace,email,address,createdAt,imageUrl,uploadStrorage,school);

@override
String toString() {
  return 'User(userId: $userId, schoolId: $schoolId, fullName: $fullName, phoneNumber: $phoneNumber, gender: $gender, dob: $dob, birthPlace: $birthPlace, email: $email, address: $address, createdAt: $createdAt, imageUrl: $imageUrl, uploadStrorage: $uploadStrorage, school: $school)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 String? userId, int schoolId, String fullName, String phoneNumber, String gender, String dob, String birthPlace, String? email, String? address, String? createdAt, String? imageUrl, UploadStorage? uploadStrorage, School? school
});


$SchoolCopyWith<$Res>? get school;

}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? schoolId = null,Object? fullName = null,Object? phoneNumber = null,Object? gender = null,Object? dob = null,Object? birthPlace = null,Object? email = freezed,Object? address = freezed,Object? createdAt = freezed,Object? imageUrl = freezed,Object? uploadStrorage = freezed,Object? school = freezed,}) {
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
as String?,uploadStrorage: freezed == uploadStrorage ? _self.uploadStrorage : uploadStrorage // ignore: cast_nullable_to_non_nullable
as UploadStorage?,school: freezed == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as School?,
  ));
}
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchoolCopyWith<$Res>? get school {
    if (_self.school == null) {
    return null;
  }

  return $SchoolCopyWith<$Res>(_self.school!, (value) {
    return _then(_self.copyWith(school: value));
  });
}
}


/// @nodoc


class _User implements User {
  const _User({this.userId, required this.schoolId, required this.fullName, required this.phoneNumber, required this.gender, required this.dob, required this.birthPlace, this.email, this.address, this.createdAt, this.imageUrl, this.uploadStrorage, this.school});
  

@override final  String? userId;
@override final  int schoolId;
@override final  String fullName;
@override final  String phoneNumber;
@override final  String gender;
@override final  String dob;
@override final  String birthPlace;
@override final  String? email;
@override final  String? address;
@override final  String? createdAt;
@override final  String? imageUrl;
@override final  UploadStorage? uploadStrorage;
@override final  School? school;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.uploadStrorage, uploadStrorage) || other.uploadStrorage == uploadStrorage)&&(identical(other.school, school) || other.school == school));
}


@override
int get hashCode => Object.hash(runtimeType,userId,schoolId,fullName,phoneNumber,gender,dob,birthPlace,email,address,createdAt,imageUrl,uploadStrorage,school);

@override
String toString() {
  return 'User(userId: $userId, schoolId: $schoolId, fullName: $fullName, phoneNumber: $phoneNumber, gender: $gender, dob: $dob, birthPlace: $birthPlace, email: $email, address: $address, createdAt: $createdAt, imageUrl: $imageUrl, uploadStrorage: $uploadStrorage, school: $school)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 String? userId, int schoolId, String fullName, String phoneNumber, String gender, String dob, String birthPlace, String? email, String? address, String? createdAt, String? imageUrl, UploadStorage? uploadStrorage, School? school
});


@override $SchoolCopyWith<$Res>? get school;

}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? schoolId = null,Object? fullName = null,Object? phoneNumber = null,Object? gender = null,Object? dob = null,Object? birthPlace = null,Object? email = freezed,Object? address = freezed,Object? createdAt = freezed,Object? imageUrl = freezed,Object? uploadStrorage = freezed,Object? school = freezed,}) {
  return _then(_User(
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
as String?,uploadStrorage: freezed == uploadStrorage ? _self.uploadStrorage : uploadStrorage // ignore: cast_nullable_to_non_nullable
as UploadStorage?,school: freezed == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as School?,
  ));
}

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchoolCopyWith<$Res>? get school {
    if (_self.school == null) {
    return null;
  }

  return $SchoolCopyWith<$Res>(_self.school!, (value) {
    return _then(_self.copyWith(school: value));
  });
}
}

// dart format on
