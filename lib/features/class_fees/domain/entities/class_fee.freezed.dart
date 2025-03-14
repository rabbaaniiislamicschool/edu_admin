// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_fee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassFee {

 int get classFeeId; int? get classId; int get amount; String get createdAt; int get feeTypeId; String? get feeName; String? get description; String? get dueDate; int get academicYearId;
/// Create a copy of ClassFee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassFeeCopyWith<ClassFee> get copyWith => _$ClassFeeCopyWithImpl<ClassFee>(this as ClassFee, _$identity);

  /// Serializes this ClassFee to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassFee&&(identical(other.classFeeId, classFeeId) || other.classFeeId == classFeeId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.feeTypeId, feeTypeId) || other.feeTypeId == feeTypeId)&&(identical(other.feeName, feeName) || other.feeName == feeName)&&(identical(other.description, description) || other.description == description)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,classFeeId,classId,amount,createdAt,feeTypeId,feeName,description,dueDate,academicYearId);

@override
String toString() {
  return 'ClassFee(classFeeId: $classFeeId, classId: $classId, amount: $amount, createdAt: $createdAt, feeTypeId: $feeTypeId, feeName: $feeName, description: $description, dueDate: $dueDate, academicYearId: $academicYearId)';
}


}

/// @nodoc
abstract mixin class $ClassFeeCopyWith<$Res>  {
  factory $ClassFeeCopyWith(ClassFee value, $Res Function(ClassFee) _then) = _$ClassFeeCopyWithImpl;
@useResult
$Res call({
 int classFeeId, int? classId, int amount, String createdAt, int feeTypeId, String? feeName, String? description, String? dueDate, int academicYearId
});




}
/// @nodoc
class _$ClassFeeCopyWithImpl<$Res>
    implements $ClassFeeCopyWith<$Res> {
  _$ClassFeeCopyWithImpl(this._self, this._then);

  final ClassFee _self;
  final $Res Function(ClassFee) _then;

/// Create a copy of ClassFee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? classFeeId = null,Object? classId = freezed,Object? amount = null,Object? createdAt = null,Object? feeTypeId = null,Object? feeName = freezed,Object? description = freezed,Object? dueDate = freezed,Object? academicYearId = null,}) {
  return _then(_self.copyWith(
classFeeId: null == classFeeId ? _self.classFeeId : classFeeId // ignore: cast_nullable_to_non_nullable
as int,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as int?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,feeTypeId: null == feeTypeId ? _self.feeTypeId : feeTypeId // ignore: cast_nullable_to_non_nullable
as int,feeName: freezed == feeName ? _self.feeName : feeName // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String?,academicYearId: null == academicYearId ? _self.academicYearId : academicYearId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ClassFee implements ClassFee {
   _ClassFee({required this.classFeeId, this.classId, required this.amount, required this.createdAt, required this.feeTypeId, this.feeName, this.description, this.dueDate, required this.academicYearId});
  factory _ClassFee.fromJson(Map<String, dynamic> json) => _$ClassFeeFromJson(json);

@override final  int classFeeId;
@override final  int? classId;
@override final  int amount;
@override final  String createdAt;
@override final  int feeTypeId;
@override final  String? feeName;
@override final  String? description;
@override final  String? dueDate;
@override final  int academicYearId;

/// Create a copy of ClassFee
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassFeeCopyWith<_ClassFee> get copyWith => __$ClassFeeCopyWithImpl<_ClassFee>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassFeeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassFee&&(identical(other.classFeeId, classFeeId) || other.classFeeId == classFeeId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.feeTypeId, feeTypeId) || other.feeTypeId == feeTypeId)&&(identical(other.feeName, feeName) || other.feeName == feeName)&&(identical(other.description, description) || other.description == description)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,classFeeId,classId,amount,createdAt,feeTypeId,feeName,description,dueDate,academicYearId);

@override
String toString() {
  return 'ClassFee(classFeeId: $classFeeId, classId: $classId, amount: $amount, createdAt: $createdAt, feeTypeId: $feeTypeId, feeName: $feeName, description: $description, dueDate: $dueDate, academicYearId: $academicYearId)';
}


}

/// @nodoc
abstract mixin class _$ClassFeeCopyWith<$Res> implements $ClassFeeCopyWith<$Res> {
  factory _$ClassFeeCopyWith(_ClassFee value, $Res Function(_ClassFee) _then) = __$ClassFeeCopyWithImpl;
@override @useResult
$Res call({
 int classFeeId, int? classId, int amount, String createdAt, int feeTypeId, String? feeName, String? description, String? dueDate, int academicYearId
});




}
/// @nodoc
class __$ClassFeeCopyWithImpl<$Res>
    implements _$ClassFeeCopyWith<$Res> {
  __$ClassFeeCopyWithImpl(this._self, this._then);

  final _ClassFee _self;
  final $Res Function(_ClassFee) _then;

/// Create a copy of ClassFee
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? classFeeId = null,Object? classId = freezed,Object? amount = null,Object? createdAt = null,Object? feeTypeId = null,Object? feeName = freezed,Object? description = freezed,Object? dueDate = freezed,Object? academicYearId = null,}) {
  return _then(_ClassFee(
classFeeId: null == classFeeId ? _self.classFeeId : classFeeId // ignore: cast_nullable_to_non_nullable
as int,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as int?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,feeTypeId: null == feeTypeId ? _self.feeTypeId : feeTypeId // ignore: cast_nullable_to_non_nullable
as int,feeName: freezed == feeName ? _self.feeName : feeName // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String?,academicYearId: null == academicYearId ? _self.academicYearId : academicYearId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
