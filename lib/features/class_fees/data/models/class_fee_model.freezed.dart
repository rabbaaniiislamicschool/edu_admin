// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_fee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassFeeModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'class_fee_id', includeToJson: false) int get classFeeId;@JsonKey(name: 'class_id') int? get classId; int get amount;@JsonKey(name: 'created_at', includeToJson: false) String get createdAt;@JsonKey(name: 'fee_type_id') int get feeTypeId;@JsonKey(name: 'fee_name') String? get feeName; String? get description;@JsonKey(name: 'due_date') String? get dueDate;@JsonKey(name: 'academic_year_id') int get academicYearId;
/// Create a copy of ClassFeeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassFeeModelCopyWith<ClassFeeModel> get copyWith => _$ClassFeeModelCopyWithImpl<ClassFeeModel>(this as ClassFeeModel, _$identity);

  /// Serializes this ClassFeeModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ClassFeeModel'))
    ..add(DiagnosticsProperty('classFeeId', classFeeId))..add(DiagnosticsProperty('classId', classId))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('feeTypeId', feeTypeId))..add(DiagnosticsProperty('feeName', feeName))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('dueDate', dueDate))..add(DiagnosticsProperty('academicYearId', academicYearId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassFeeModel&&(identical(other.classFeeId, classFeeId) || other.classFeeId == classFeeId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.feeTypeId, feeTypeId) || other.feeTypeId == feeTypeId)&&(identical(other.feeName, feeName) || other.feeName == feeName)&&(identical(other.description, description) || other.description == description)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,classFeeId,classId,amount,createdAt,feeTypeId,feeName,description,dueDate,academicYearId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ClassFeeModel(classFeeId: $classFeeId, classId: $classId, amount: $amount, createdAt: $createdAt, feeTypeId: $feeTypeId, feeName: $feeName, description: $description, dueDate: $dueDate, academicYearId: $academicYearId)';
}


}

/// @nodoc
abstract mixin class $ClassFeeModelCopyWith<$Res>  {
  factory $ClassFeeModelCopyWith(ClassFeeModel value, $Res Function(ClassFeeModel) _then) = _$ClassFeeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'class_fee_id', includeToJson: false) int classFeeId,@JsonKey(name: 'class_id') int? classId, int amount,@JsonKey(name: 'created_at', includeToJson: false) String createdAt,@JsonKey(name: 'fee_type_id') int feeTypeId,@JsonKey(name: 'fee_name') String? feeName, String? description,@JsonKey(name: 'due_date') String? dueDate,@JsonKey(name: 'academic_year_id') int academicYearId
});




}
/// @nodoc
class _$ClassFeeModelCopyWithImpl<$Res>
    implements $ClassFeeModelCopyWith<$Res> {
  _$ClassFeeModelCopyWithImpl(this._self, this._then);

  final ClassFeeModel _self;
  final $Res Function(ClassFeeModel) _then;

/// Create a copy of ClassFeeModel
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

class _ClassFeeModel with DiagnosticableTreeMixin implements ClassFeeModel {
  const _ClassFeeModel({@JsonKey(name: 'class_fee_id', includeToJson: false) required this.classFeeId, @JsonKey(name: 'class_id') this.classId, required this.amount, @JsonKey(name: 'created_at', includeToJson: false) required this.createdAt, @JsonKey(name: 'fee_type_id') required this.feeTypeId, @JsonKey(name: 'fee_name') this.feeName, this.description, @JsonKey(name: 'due_date') this.dueDate, @JsonKey(name: 'academic_year_id') required this.academicYearId});
  factory _ClassFeeModel.fromJson(Map<String, dynamic> json) => _$ClassFeeModelFromJson(json);

@override@JsonKey(name: 'class_fee_id', includeToJson: false) final  int classFeeId;
@override@JsonKey(name: 'class_id') final  int? classId;
@override final  int amount;
@override@JsonKey(name: 'created_at', includeToJson: false) final  String createdAt;
@override@JsonKey(name: 'fee_type_id') final  int feeTypeId;
@override@JsonKey(name: 'fee_name') final  String? feeName;
@override final  String? description;
@override@JsonKey(name: 'due_date') final  String? dueDate;
@override@JsonKey(name: 'academic_year_id') final  int academicYearId;

/// Create a copy of ClassFeeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassFeeModelCopyWith<_ClassFeeModel> get copyWith => __$ClassFeeModelCopyWithImpl<_ClassFeeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassFeeModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ClassFeeModel'))
    ..add(DiagnosticsProperty('classFeeId', classFeeId))..add(DiagnosticsProperty('classId', classId))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('feeTypeId', feeTypeId))..add(DiagnosticsProperty('feeName', feeName))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('dueDate', dueDate))..add(DiagnosticsProperty('academicYearId', academicYearId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassFeeModel&&(identical(other.classFeeId, classFeeId) || other.classFeeId == classFeeId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.feeTypeId, feeTypeId) || other.feeTypeId == feeTypeId)&&(identical(other.feeName, feeName) || other.feeName == feeName)&&(identical(other.description, description) || other.description == description)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,classFeeId,classId,amount,createdAt,feeTypeId,feeName,description,dueDate,academicYearId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ClassFeeModel(classFeeId: $classFeeId, classId: $classId, amount: $amount, createdAt: $createdAt, feeTypeId: $feeTypeId, feeName: $feeName, description: $description, dueDate: $dueDate, academicYearId: $academicYearId)';
}


}

/// @nodoc
abstract mixin class _$ClassFeeModelCopyWith<$Res> implements $ClassFeeModelCopyWith<$Res> {
  factory _$ClassFeeModelCopyWith(_ClassFeeModel value, $Res Function(_ClassFeeModel) _then) = __$ClassFeeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'class_fee_id', includeToJson: false) int classFeeId,@JsonKey(name: 'class_id') int? classId, int amount,@JsonKey(name: 'created_at', includeToJson: false) String createdAt,@JsonKey(name: 'fee_type_id') int feeTypeId,@JsonKey(name: 'fee_name') String? feeName, String? description,@JsonKey(name: 'due_date') String? dueDate,@JsonKey(name: 'academic_year_id') int academicYearId
});




}
/// @nodoc
class __$ClassFeeModelCopyWithImpl<$Res>
    implements _$ClassFeeModelCopyWith<$Res> {
  __$ClassFeeModelCopyWithImpl(this._self, this._then);

  final _ClassFeeModel _self;
  final $Res Function(_ClassFeeModel) _then;

/// Create a copy of ClassFeeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? classFeeId = null,Object? classId = freezed,Object? amount = null,Object? createdAt = null,Object? feeTypeId = null,Object? feeName = freezed,Object? description = freezed,Object? dueDate = freezed,Object? academicYearId = null,}) {
  return _then(_ClassFeeModel(
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
