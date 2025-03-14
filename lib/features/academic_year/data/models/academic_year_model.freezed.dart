// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'academic_year_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AcademicYearModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'academic_year_id', includeToJson: false) int get academicYearId;@JsonKey(name: 'foundation_id') String get foundationId;@JsonKey(name: 'start_date_odd_semester') String get startDateOddSemester;@JsonKey(name: 'end_date_odd_semester_odd_semester') String get endDateOddSemester;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'year_range') String get yearRange;@JsonKey(name: 'start_date_even_semester') String get startDateEvenSemester;@JsonKey(name: 'end_date_even_semester') String get endDateEvenSemester;
/// Create a copy of AcademicYearModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcademicYearModelCopyWith<AcademicYearModel> get copyWith => _$AcademicYearModelCopyWithImpl<AcademicYearModel>(this as AcademicYearModel, _$identity);

  /// Serializes this AcademicYearModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AcademicYearModel'))
    ..add(DiagnosticsProperty('academicYearId', academicYearId))..add(DiagnosticsProperty('foundationId', foundationId))..add(DiagnosticsProperty('startDateOddSemester', startDateOddSemester))..add(DiagnosticsProperty('endDateOddSemester', endDateOddSemester))..add(DiagnosticsProperty('isActive', isActive))..add(DiagnosticsProperty('yearRange', yearRange))..add(DiagnosticsProperty('startDateEvenSemester', startDateEvenSemester))..add(DiagnosticsProperty('endDateEvenSemester', endDateEvenSemester));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcademicYearModel&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId)&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.startDateOddSemester, startDateOddSemester) || other.startDateOddSemester == startDateOddSemester)&&(identical(other.endDateOddSemester, endDateOddSemester) || other.endDateOddSemester == endDateOddSemester)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.yearRange, yearRange) || other.yearRange == yearRange)&&(identical(other.startDateEvenSemester, startDateEvenSemester) || other.startDateEvenSemester == startDateEvenSemester)&&(identical(other.endDateEvenSemester, endDateEvenSemester) || other.endDateEvenSemester == endDateEvenSemester));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,academicYearId,foundationId,startDateOddSemester,endDateOddSemester,isActive,yearRange,startDateEvenSemester,endDateEvenSemester);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AcademicYearModel(academicYearId: $academicYearId, foundationId: $foundationId, startDateOddSemester: $startDateOddSemester, endDateOddSemester: $endDateOddSemester, isActive: $isActive, yearRange: $yearRange, startDateEvenSemester: $startDateEvenSemester, endDateEvenSemester: $endDateEvenSemester)';
}


}

/// @nodoc
abstract mixin class $AcademicYearModelCopyWith<$Res>  {
  factory $AcademicYearModelCopyWith(AcademicYearModel value, $Res Function(AcademicYearModel) _then) = _$AcademicYearModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'academic_year_id', includeToJson: false) int academicYearId,@JsonKey(name: 'foundation_id') String foundationId,@JsonKey(name: 'start_date_odd_semester') String startDateOddSemester,@JsonKey(name: 'end_date_odd_semester_odd_semester') String endDateOddSemester,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'year_range') String yearRange,@JsonKey(name: 'start_date_even_semester') String startDateEvenSemester,@JsonKey(name: 'end_date_even_semester') String endDateEvenSemester
});




}
/// @nodoc
class _$AcademicYearModelCopyWithImpl<$Res>
    implements $AcademicYearModelCopyWith<$Res> {
  _$AcademicYearModelCopyWithImpl(this._self, this._then);

  final AcademicYearModel _self;
  final $Res Function(AcademicYearModel) _then;

/// Create a copy of AcademicYearModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? academicYearId = null,Object? foundationId = null,Object? startDateOddSemester = null,Object? endDateOddSemester = null,Object? isActive = null,Object? yearRange = null,Object? startDateEvenSemester = null,Object? endDateEvenSemester = null,}) {
  return _then(_self.copyWith(
academicYearId: null == academicYearId ? _self.academicYearId : academicYearId // ignore: cast_nullable_to_non_nullable
as int,foundationId: null == foundationId ? _self.foundationId : foundationId // ignore: cast_nullable_to_non_nullable
as String,startDateOddSemester: null == startDateOddSemester ? _self.startDateOddSemester : startDateOddSemester // ignore: cast_nullable_to_non_nullable
as String,endDateOddSemester: null == endDateOddSemester ? _self.endDateOddSemester : endDateOddSemester // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,yearRange: null == yearRange ? _self.yearRange : yearRange // ignore: cast_nullable_to_non_nullable
as String,startDateEvenSemester: null == startDateEvenSemester ? _self.startDateEvenSemester : startDateEvenSemester // ignore: cast_nullable_to_non_nullable
as String,endDateEvenSemester: null == endDateEvenSemester ? _self.endDateEvenSemester : endDateEvenSemester // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AcademicYearModel with DiagnosticableTreeMixin implements AcademicYearModel {
  const _AcademicYearModel({@JsonKey(name: 'academic_year_id', includeToJson: false) required this.academicYearId, @JsonKey(name: 'foundation_id') required this.foundationId, @JsonKey(name: 'start_date_odd_semester') required this.startDateOddSemester, @JsonKey(name: 'end_date_odd_semester_odd_semester') required this.endDateOddSemester, @JsonKey(name: 'is_active') required this.isActive, @JsonKey(name: 'year_range') required this.yearRange, @JsonKey(name: 'start_date_even_semester') required this.startDateEvenSemester, @JsonKey(name: 'end_date_even_semester') required this.endDateEvenSemester});
  factory _AcademicYearModel.fromJson(Map<String, dynamic> json) => _$AcademicYearModelFromJson(json);

@override@JsonKey(name: 'academic_year_id', includeToJson: false) final  int academicYearId;
@override@JsonKey(name: 'foundation_id') final  String foundationId;
@override@JsonKey(name: 'start_date_odd_semester') final  String startDateOddSemester;
@override@JsonKey(name: 'end_date_odd_semester_odd_semester') final  String endDateOddSemester;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey(name: 'year_range') final  String yearRange;
@override@JsonKey(name: 'start_date_even_semester') final  String startDateEvenSemester;
@override@JsonKey(name: 'end_date_even_semester') final  String endDateEvenSemester;

/// Create a copy of AcademicYearModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcademicYearModelCopyWith<_AcademicYearModel> get copyWith => __$AcademicYearModelCopyWithImpl<_AcademicYearModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcademicYearModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AcademicYearModel'))
    ..add(DiagnosticsProperty('academicYearId', academicYearId))..add(DiagnosticsProperty('foundationId', foundationId))..add(DiagnosticsProperty('startDateOddSemester', startDateOddSemester))..add(DiagnosticsProperty('endDateOddSemester', endDateOddSemester))..add(DiagnosticsProperty('isActive', isActive))..add(DiagnosticsProperty('yearRange', yearRange))..add(DiagnosticsProperty('startDateEvenSemester', startDateEvenSemester))..add(DiagnosticsProperty('endDateEvenSemester', endDateEvenSemester));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcademicYearModel&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId)&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.startDateOddSemester, startDateOddSemester) || other.startDateOddSemester == startDateOddSemester)&&(identical(other.endDateOddSemester, endDateOddSemester) || other.endDateOddSemester == endDateOddSemester)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.yearRange, yearRange) || other.yearRange == yearRange)&&(identical(other.startDateEvenSemester, startDateEvenSemester) || other.startDateEvenSemester == startDateEvenSemester)&&(identical(other.endDateEvenSemester, endDateEvenSemester) || other.endDateEvenSemester == endDateEvenSemester));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,academicYearId,foundationId,startDateOddSemester,endDateOddSemester,isActive,yearRange,startDateEvenSemester,endDateEvenSemester);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AcademicYearModel(academicYearId: $academicYearId, foundationId: $foundationId, startDateOddSemester: $startDateOddSemester, endDateOddSemester: $endDateOddSemester, isActive: $isActive, yearRange: $yearRange, startDateEvenSemester: $startDateEvenSemester, endDateEvenSemester: $endDateEvenSemester)';
}


}

/// @nodoc
abstract mixin class _$AcademicYearModelCopyWith<$Res> implements $AcademicYearModelCopyWith<$Res> {
  factory _$AcademicYearModelCopyWith(_AcademicYearModel value, $Res Function(_AcademicYearModel) _then) = __$AcademicYearModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'academic_year_id', includeToJson: false) int academicYearId,@JsonKey(name: 'foundation_id') String foundationId,@JsonKey(name: 'start_date_odd_semester') String startDateOddSemester,@JsonKey(name: 'end_date_odd_semester_odd_semester') String endDateOddSemester,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'year_range') String yearRange,@JsonKey(name: 'start_date_even_semester') String startDateEvenSemester,@JsonKey(name: 'end_date_even_semester') String endDateEvenSemester
});




}
/// @nodoc
class __$AcademicYearModelCopyWithImpl<$Res>
    implements _$AcademicYearModelCopyWith<$Res> {
  __$AcademicYearModelCopyWithImpl(this._self, this._then);

  final _AcademicYearModel _self;
  final $Res Function(_AcademicYearModel) _then;

/// Create a copy of AcademicYearModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? academicYearId = null,Object? foundationId = null,Object? startDateOddSemester = null,Object? endDateOddSemester = null,Object? isActive = null,Object? yearRange = null,Object? startDateEvenSemester = null,Object? endDateEvenSemester = null,}) {
  return _then(_AcademicYearModel(
academicYearId: null == academicYearId ? _self.academicYearId : academicYearId // ignore: cast_nullable_to_non_nullable
as int,foundationId: null == foundationId ? _self.foundationId : foundationId // ignore: cast_nullable_to_non_nullable
as String,startDateOddSemester: null == startDateOddSemester ? _self.startDateOddSemester : startDateOddSemester // ignore: cast_nullable_to_non_nullable
as String,endDateOddSemester: null == endDateOddSemester ? _self.endDateOddSemester : endDateOddSemester // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,yearRange: null == yearRange ? _self.yearRange : yearRange // ignore: cast_nullable_to_non_nullable
as String,startDateEvenSemester: null == startDateEvenSemester ? _self.startDateEvenSemester : startDateEvenSemester // ignore: cast_nullable_to_non_nullable
as String,endDateEvenSemester: null == endDateEvenSemester ? _self.endDateEvenSemester : endDateEvenSemester // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
