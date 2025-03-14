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

 String get userId; String get foundationId; String get fullName; String get email; String get phoneNumber; String get gender; String get dob; String? get address; String get createdAt; String? get birthPlace; String? get studentNumberId; String? get savedPassword;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.address, address) || other.address == address)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.studentNumberId, studentNumberId) || other.studentNumberId == studentNumberId)&&(identical(other.savedPassword, savedPassword) || other.savedPassword == savedPassword));
}


@override
int get hashCode => Object.hash(runtimeType,userId,foundationId,fullName,email,phoneNumber,gender,dob,address,createdAt,birthPlace,studentNumberId,savedPassword);

@override
String toString() {
  return 'User(userId: $userId, foundationId: $foundationId, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, gender: $gender, dob: $dob, address: $address, createdAt: $createdAt, birthPlace: $birthPlace, studentNumberId: $studentNumberId, savedPassword: $savedPassword)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 String userId, String foundationId, String fullName, String email, String phoneNumber, String gender, String dob, String? address, String createdAt, String? birthPlace, String? studentNumberId, String? savedPassword
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? foundationId = null,Object? fullName = null,Object? email = null,Object? phoneNumber = null,Object? gender = null,Object? dob = null,Object? address = freezed,Object? createdAt = null,Object? birthPlace = freezed,Object? studentNumberId = freezed,Object? savedPassword = freezed,}) {
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
as String?,studentNumberId: freezed == studentNumberId ? _self.studentNumberId : studentNumberId // ignore: cast_nullable_to_non_nullable
as String?,savedPassword: freezed == savedPassword ? _self.savedPassword : savedPassword // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _User implements User {
  const _User({required this.userId, required this.foundationId, required this.fullName, required this.email, required this.phoneNumber, required this.gender, required this.dob, this.address, required this.createdAt, this.birthPlace, this.studentNumberId, this.savedPassword});
  

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
@override final  String? studentNumberId;
@override final  String? savedPassword;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.address, address) || other.address == address)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.studentNumberId, studentNumberId) || other.studentNumberId == studentNumberId)&&(identical(other.savedPassword, savedPassword) || other.savedPassword == savedPassword));
}


@override
int get hashCode => Object.hash(runtimeType,userId,foundationId,fullName,email,phoneNumber,gender,dob,address,createdAt,birthPlace,studentNumberId,savedPassword);

@override
String toString() {
  return 'User(userId: $userId, foundationId: $foundationId, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, gender: $gender, dob: $dob, address: $address, createdAt: $createdAt, birthPlace: $birthPlace, studentNumberId: $studentNumberId, savedPassword: $savedPassword)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 String userId, String foundationId, String fullName, String email, String phoneNumber, String gender, String dob, String? address, String createdAt, String? birthPlace, String? studentNumberId, String? savedPassword
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? foundationId = null,Object? fullName = null,Object? email = null,Object? phoneNumber = null,Object? gender = null,Object? dob = null,Object? address = freezed,Object? createdAt = null,Object? birthPlace = freezed,Object? studentNumberId = freezed,Object? savedPassword = freezed,}) {
  return _then(_User(
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
as String?,studentNumberId: freezed == studentNumberId ? _self.studentNumberId : studentNumberId // ignore: cast_nullable_to_non_nullable
as String?,savedPassword: freezed == savedPassword ? _self.savedPassword : savedPassword // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
