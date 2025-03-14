// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_fee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudentFee {

 int get studentFeeId; String get studentId; int get classFeeId; int get amount; String get startPeriod; String get endPeriod; String get createdAt; bool get isCustom; int get feeTypeId; int get academicYearId;
/// Create a copy of StudentFee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentFeeCopyWith<StudentFee> get copyWith => _$StudentFeeCopyWithImpl<StudentFee>(this as StudentFee, _$identity);

  /// Serializes this StudentFee to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentFee&&(identical(other.studentFeeId, studentFeeId) || other.studentFeeId == studentFeeId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.classFeeId, classFeeId) || other.classFeeId == classFeeId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.startPeriod, startPeriod) || other.startPeriod == startPeriod)&&(identical(other.endPeriod, endPeriod) || other.endPeriod == endPeriod)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isCustom, isCustom) || other.isCustom == isCustom)&&(identical(other.feeTypeId, feeTypeId) || other.feeTypeId == feeTypeId)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentFeeId,studentId,classFeeId,amount,startPeriod,endPeriod,createdAt,isCustom,feeTypeId,academicYearId);

@override
String toString() {
  return 'StudentFee(studentFeeId: $studentFeeId, studentId: $studentId, classFeeId: $classFeeId, amount: $amount, startPeriod: $startPeriod, endPeriod: $endPeriod, createdAt: $createdAt, isCustom: $isCustom, feeTypeId: $feeTypeId, academicYearId: $academicYearId)';
}


}

/// @nodoc
abstract mixin class $StudentFeeCopyWith<$Res>  {
  factory $StudentFeeCopyWith(StudentFee value, $Res Function(StudentFee) _then) = _$StudentFeeCopyWithImpl;
@useResult
$Res call({
 int studentFeeId, String studentId, int classFeeId, int amount, String startPeriod, String endPeriod, String createdAt, bool isCustom, int feeTypeId, int academicYearId
});




}
/// @nodoc
class _$StudentFeeCopyWithImpl<$Res>
    implements $StudentFeeCopyWith<$Res> {
  _$StudentFeeCopyWithImpl(this._self, this._then);

  final StudentFee _self;
  final $Res Function(StudentFee) _then;

/// Create a copy of StudentFee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentFeeId = null,Object? studentId = null,Object? classFeeId = null,Object? amount = null,Object? startPeriod = null,Object? endPeriod = null,Object? createdAt = null,Object? isCustom = null,Object? feeTypeId = null,Object? academicYearId = null,}) {
  return _then(_self.copyWith(
studentFeeId: null == studentFeeId ? _self.studentFeeId : studentFeeId // ignore: cast_nullable_to_non_nullable
as int,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,classFeeId: null == classFeeId ? _self.classFeeId : classFeeId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,startPeriod: null == startPeriod ? _self.startPeriod : startPeriod // ignore: cast_nullable_to_non_nullable
as String,endPeriod: null == endPeriod ? _self.endPeriod : endPeriod // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,isCustom: null == isCustom ? _self.isCustom : isCustom // ignore: cast_nullable_to_non_nullable
as bool,feeTypeId: null == feeTypeId ? _self.feeTypeId : feeTypeId // ignore: cast_nullable_to_non_nullable
as int,academicYearId: null == academicYearId ? _self.academicYearId : academicYearId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _StudentFee implements StudentFee {
   _StudentFee({required this.studentFeeId, required this.studentId, required this.classFeeId, required this.amount, required this.startPeriod, required this.endPeriod, required this.createdAt, required this.isCustom, required this.feeTypeId, required this.academicYearId});
  factory _StudentFee.fromJson(Map<String, dynamic> json) => _$StudentFeeFromJson(json);

@override final  int studentFeeId;
@override final  String studentId;
@override final  int classFeeId;
@override final  int amount;
@override final  String startPeriod;
@override final  String endPeriod;
@override final  String createdAt;
@override final  bool isCustom;
@override final  int feeTypeId;
@override final  int academicYearId;

/// Create a copy of StudentFee
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentFeeCopyWith<_StudentFee> get copyWith => __$StudentFeeCopyWithImpl<_StudentFee>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentFeeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentFee&&(identical(other.studentFeeId, studentFeeId) || other.studentFeeId == studentFeeId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.classFeeId, classFeeId) || other.classFeeId == classFeeId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.startPeriod, startPeriod) || other.startPeriod == startPeriod)&&(identical(other.endPeriod, endPeriod) || other.endPeriod == endPeriod)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isCustom, isCustom) || other.isCustom == isCustom)&&(identical(other.feeTypeId, feeTypeId) || other.feeTypeId == feeTypeId)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentFeeId,studentId,classFeeId,amount,startPeriod,endPeriod,createdAt,isCustom,feeTypeId,academicYearId);

@override
String toString() {
  return 'StudentFee(studentFeeId: $studentFeeId, studentId: $studentId, classFeeId: $classFeeId, amount: $amount, startPeriod: $startPeriod, endPeriod: $endPeriod, createdAt: $createdAt, isCustom: $isCustom, feeTypeId: $feeTypeId, academicYearId: $academicYearId)';
}


}

/// @nodoc
abstract mixin class _$StudentFeeCopyWith<$Res> implements $StudentFeeCopyWith<$Res> {
  factory _$StudentFeeCopyWith(_StudentFee value, $Res Function(_StudentFee) _then) = __$StudentFeeCopyWithImpl;
@override @useResult
$Res call({
 int studentFeeId, String studentId, int classFeeId, int amount, String startPeriod, String endPeriod, String createdAt, bool isCustom, int feeTypeId, int academicYearId
});




}
/// @nodoc
class __$StudentFeeCopyWithImpl<$Res>
    implements _$StudentFeeCopyWith<$Res> {
  __$StudentFeeCopyWithImpl(this._self, this._then);

  final _StudentFee _self;
  final $Res Function(_StudentFee) _then;

/// Create a copy of StudentFee
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentFeeId = null,Object? studentId = null,Object? classFeeId = null,Object? amount = null,Object? startPeriod = null,Object? endPeriod = null,Object? createdAt = null,Object? isCustom = null,Object? feeTypeId = null,Object? academicYearId = null,}) {
  return _then(_StudentFee(
studentFeeId: null == studentFeeId ? _self.studentFeeId : studentFeeId // ignore: cast_nullable_to_non_nullable
as int,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,classFeeId: null == classFeeId ? _self.classFeeId : classFeeId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,startPeriod: null == startPeriod ? _self.startPeriod : startPeriod // ignore: cast_nullable_to_non_nullable
as String,endPeriod: null == endPeriod ? _self.endPeriod : endPeriod // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,isCustom: null == isCustom ? _self.isCustom : isCustom // ignore: cast_nullable_to_non_nullable
as bool,feeTypeId: null == feeTypeId ? _self.feeTypeId : feeTypeId // ignore: cast_nullable_to_non_nullable
as int,academicYearId: null == academicYearId ? _self.academicYearId : academicYearId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
