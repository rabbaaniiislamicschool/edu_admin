// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fee_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeeType {

 int get feeTypeId; String get name; String? get description; String get frequency; String get createdAt; String get foundationId; int? get deadlineDate;
/// Create a copy of FeeType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeTypeCopyWith<FeeType> get copyWith => _$FeeTypeCopyWithImpl<FeeType>(this as FeeType, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeType&&(identical(other.feeTypeId, feeTypeId) || other.feeTypeId == feeTypeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.deadlineDate, deadlineDate) || other.deadlineDate == deadlineDate));
}


@override
int get hashCode => Object.hash(runtimeType,feeTypeId,name,description,frequency,createdAt,foundationId,deadlineDate);

@override
String toString() {
  return 'FeeType(feeTypeId: $feeTypeId, name: $name, description: $description, frequency: $frequency, createdAt: $createdAt, foundationId: $foundationId, deadlineDate: $deadlineDate)';
}


}

/// @nodoc
abstract mixin class $FeeTypeCopyWith<$Res>  {
  factory $FeeTypeCopyWith(FeeType value, $Res Function(FeeType) _then) = _$FeeTypeCopyWithImpl;
@useResult
$Res call({
 int feeTypeId, String name, String? description, String frequency, String createdAt, String foundationId, int? deadlineDate
});




}
/// @nodoc
class _$FeeTypeCopyWithImpl<$Res>
    implements $FeeTypeCopyWith<$Res> {
  _$FeeTypeCopyWithImpl(this._self, this._then);

  final FeeType _self;
  final $Res Function(FeeType) _then;

/// Create a copy of FeeType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? feeTypeId = null,Object? name = null,Object? description = freezed,Object? frequency = null,Object? createdAt = null,Object? foundationId = null,Object? deadlineDate = freezed,}) {
  return _then(_self.copyWith(
feeTypeId: null == feeTypeId ? _self.feeTypeId : feeTypeId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,foundationId: null == foundationId ? _self.foundationId : foundationId // ignore: cast_nullable_to_non_nullable
as String,deadlineDate: freezed == deadlineDate ? _self.deadlineDate : deadlineDate // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc


class _FeeType implements FeeType {
   _FeeType({required this.feeTypeId, required this.name, this.description, required this.frequency, required this.createdAt, required this.foundationId, this.deadlineDate});
  

@override final  int feeTypeId;
@override final  String name;
@override final  String? description;
@override final  String frequency;
@override final  String createdAt;
@override final  String foundationId;
@override final  int? deadlineDate;

/// Create a copy of FeeType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeTypeCopyWith<_FeeType> get copyWith => __$FeeTypeCopyWithImpl<_FeeType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeType&&(identical(other.feeTypeId, feeTypeId) || other.feeTypeId == feeTypeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.deadlineDate, deadlineDate) || other.deadlineDate == deadlineDate));
}


@override
int get hashCode => Object.hash(runtimeType,feeTypeId,name,description,frequency,createdAt,foundationId,deadlineDate);

@override
String toString() {
  return 'FeeType(feeTypeId: $feeTypeId, name: $name, description: $description, frequency: $frequency, createdAt: $createdAt, foundationId: $foundationId, deadlineDate: $deadlineDate)';
}


}

/// @nodoc
abstract mixin class _$FeeTypeCopyWith<$Res> implements $FeeTypeCopyWith<$Res> {
  factory _$FeeTypeCopyWith(_FeeType value, $Res Function(_FeeType) _then) = __$FeeTypeCopyWithImpl;
@override @useResult
$Res call({
 int feeTypeId, String name, String? description, String frequency, String createdAt, String foundationId, int? deadlineDate
});




}
/// @nodoc
class __$FeeTypeCopyWithImpl<$Res>
    implements _$FeeTypeCopyWith<$Res> {
  __$FeeTypeCopyWithImpl(this._self, this._then);

  final _FeeType _self;
  final $Res Function(_FeeType) _then;

/// Create a copy of FeeType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? feeTypeId = null,Object? name = null,Object? description = freezed,Object? frequency = null,Object? createdAt = null,Object? foundationId = null,Object? deadlineDate = freezed,}) {
  return _then(_FeeType(
feeTypeId: null == feeTypeId ? _self.feeTypeId : feeTypeId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,foundationId: null == foundationId ? _self.foundationId : foundationId // ignore: cast_nullable_to_non_nullable
as String,deadlineDate: freezed == deadlineDate ? _self.deadlineDate : deadlineDate // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
