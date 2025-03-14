// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_fee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudentFeeModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'student_fee_id', includeToJson: false) int get studentFeeId;@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'class_fee_id') int get classFeeId;@JsonKey(name: 'amount') int get amount;@JsonKey(name: 'start_period') String get startPeriod;@JsonKey(name: 'end_period') String get endPeriod;@JsonKey(name: 'created_at', includeToJson: false) String get createdAt;@JsonKey(name: 'is_custom') bool get isCustom;@JsonKey(name: 'fee_type_id') int get feeTypeId;@JsonKey(name: 'academic_year_id') int get academicYearId;
/// Create a copy of StudentFeeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentFeeModelCopyWith<StudentFeeModel> get copyWith => _$StudentFeeModelCopyWithImpl<StudentFeeModel>(this as StudentFeeModel, _$identity);

  /// Serializes this StudentFeeModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentFeeModel'))
    ..add(DiagnosticsProperty('studentFeeId', studentFeeId))..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('classFeeId', classFeeId))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('startPeriod', startPeriod))..add(DiagnosticsProperty('endPeriod', endPeriod))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('isCustom', isCustom))..add(DiagnosticsProperty('feeTypeId', feeTypeId))..add(DiagnosticsProperty('academicYearId', academicYearId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentFeeModel&&(identical(other.studentFeeId, studentFeeId) || other.studentFeeId == studentFeeId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.classFeeId, classFeeId) || other.classFeeId == classFeeId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.startPeriod, startPeriod) || other.startPeriod == startPeriod)&&(identical(other.endPeriod, endPeriod) || other.endPeriod == endPeriod)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isCustom, isCustom) || other.isCustom == isCustom)&&(identical(other.feeTypeId, feeTypeId) || other.feeTypeId == feeTypeId)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentFeeId,studentId,classFeeId,amount,startPeriod,endPeriod,createdAt,isCustom,feeTypeId,academicYearId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentFeeModel(studentFeeId: $studentFeeId, studentId: $studentId, classFeeId: $classFeeId, amount: $amount, startPeriod: $startPeriod, endPeriod: $endPeriod, createdAt: $createdAt, isCustom: $isCustom, feeTypeId: $feeTypeId, academicYearId: $academicYearId)';
}


}

/// @nodoc
abstract mixin class $StudentFeeModelCopyWith<$Res>  {
  factory $StudentFeeModelCopyWith(StudentFeeModel value, $Res Function(StudentFeeModel) _then) = _$StudentFeeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_fee_id', includeToJson: false) int studentFeeId,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'class_fee_id') int classFeeId,@JsonKey(name: 'amount') int amount,@JsonKey(name: 'start_period') String startPeriod,@JsonKey(name: 'end_period') String endPeriod,@JsonKey(name: 'created_at', includeToJson: false) String createdAt,@JsonKey(name: 'is_custom') bool isCustom,@JsonKey(name: 'fee_type_id') int feeTypeId,@JsonKey(name: 'academic_year_id') int academicYearId
});




}
/// @nodoc
class _$StudentFeeModelCopyWithImpl<$Res>
    implements $StudentFeeModelCopyWith<$Res> {
  _$StudentFeeModelCopyWithImpl(this._self, this._then);

  final StudentFeeModel _self;
  final $Res Function(StudentFeeModel) _then;

/// Create a copy of StudentFeeModel
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

class _StudentFeeModel with DiagnosticableTreeMixin implements StudentFeeModel {
  const _StudentFeeModel({@JsonKey(name: 'student_fee_id', includeToJson: false) required this.studentFeeId, @JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'class_fee_id') required this.classFeeId, @JsonKey(name: 'amount') required this.amount, @JsonKey(name: 'start_period') required this.startPeriod, @JsonKey(name: 'end_period') required this.endPeriod, @JsonKey(name: 'created_at', includeToJson: false) required this.createdAt, @JsonKey(name: 'is_custom') required this.isCustom, @JsonKey(name: 'fee_type_id') required this.feeTypeId, @JsonKey(name: 'academic_year_id') required this.academicYearId});
  factory _StudentFeeModel.fromJson(Map<String, dynamic> json) => _$StudentFeeModelFromJson(json);

@override@JsonKey(name: 'student_fee_id', includeToJson: false) final  int studentFeeId;
@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'class_fee_id') final  int classFeeId;
@override@JsonKey(name: 'amount') final  int amount;
@override@JsonKey(name: 'start_period') final  String startPeriod;
@override@JsonKey(name: 'end_period') final  String endPeriod;
@override@JsonKey(name: 'created_at', includeToJson: false) final  String createdAt;
@override@JsonKey(name: 'is_custom') final  bool isCustom;
@override@JsonKey(name: 'fee_type_id') final  int feeTypeId;
@override@JsonKey(name: 'academic_year_id') final  int academicYearId;

/// Create a copy of StudentFeeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentFeeModelCopyWith<_StudentFeeModel> get copyWith => __$StudentFeeModelCopyWithImpl<_StudentFeeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentFeeModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentFeeModel'))
    ..add(DiagnosticsProperty('studentFeeId', studentFeeId))..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('classFeeId', classFeeId))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('startPeriod', startPeriod))..add(DiagnosticsProperty('endPeriod', endPeriod))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('isCustom', isCustom))..add(DiagnosticsProperty('feeTypeId', feeTypeId))..add(DiagnosticsProperty('academicYearId', academicYearId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentFeeModel&&(identical(other.studentFeeId, studentFeeId) || other.studentFeeId == studentFeeId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.classFeeId, classFeeId) || other.classFeeId == classFeeId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.startPeriod, startPeriod) || other.startPeriod == startPeriod)&&(identical(other.endPeriod, endPeriod) || other.endPeriod == endPeriod)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isCustom, isCustom) || other.isCustom == isCustom)&&(identical(other.feeTypeId, feeTypeId) || other.feeTypeId == feeTypeId)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentFeeId,studentId,classFeeId,amount,startPeriod,endPeriod,createdAt,isCustom,feeTypeId,academicYearId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentFeeModel(studentFeeId: $studentFeeId, studentId: $studentId, classFeeId: $classFeeId, amount: $amount, startPeriod: $startPeriod, endPeriod: $endPeriod, createdAt: $createdAt, isCustom: $isCustom, feeTypeId: $feeTypeId, academicYearId: $academicYearId)';
}


}

/// @nodoc
abstract mixin class _$StudentFeeModelCopyWith<$Res> implements $StudentFeeModelCopyWith<$Res> {
  factory _$StudentFeeModelCopyWith(_StudentFeeModel value, $Res Function(_StudentFeeModel) _then) = __$StudentFeeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_fee_id', includeToJson: false) int studentFeeId,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'class_fee_id') int classFeeId,@JsonKey(name: 'amount') int amount,@JsonKey(name: 'start_period') String startPeriod,@JsonKey(name: 'end_period') String endPeriod,@JsonKey(name: 'created_at', includeToJson: false) String createdAt,@JsonKey(name: 'is_custom') bool isCustom,@JsonKey(name: 'fee_type_id') int feeTypeId,@JsonKey(name: 'academic_year_id') int academicYearId
});




}
/// @nodoc
class __$StudentFeeModelCopyWithImpl<$Res>
    implements _$StudentFeeModelCopyWith<$Res> {
  __$StudentFeeModelCopyWithImpl(this._self, this._then);

  final _StudentFeeModel _self;
  final $Res Function(_StudentFeeModel) _then;

/// Create a copy of StudentFeeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentFeeId = null,Object? studentId = null,Object? classFeeId = null,Object? amount = null,Object? startPeriod = null,Object? endPeriod = null,Object? createdAt = null,Object? isCustom = null,Object? feeTypeId = null,Object? academicYearId = null,}) {
  return _then(_StudentFeeModel(
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
