// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'academic_year.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AcademicYear {

 int get academicYearId; String get foundationId; String get startDateOddSemester; String get endDateOddSemester; bool get isActive; String get yearRange; String get startDateEvenSemester; String get endDateEvenSemester;
/// Create a copy of AcademicYear
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcademicYearCopyWith<AcademicYear> get copyWith => _$AcademicYearCopyWithImpl<AcademicYear>(this as AcademicYear, _$identity);

  /// Serializes this AcademicYear to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcademicYear&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId)&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.startDateOddSemester, startDateOddSemester) || other.startDateOddSemester == startDateOddSemester)&&(identical(other.endDateOddSemester, endDateOddSemester) || other.endDateOddSemester == endDateOddSemester)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.yearRange, yearRange) || other.yearRange == yearRange)&&(identical(other.startDateEvenSemester, startDateEvenSemester) || other.startDateEvenSemester == startDateEvenSemester)&&(identical(other.endDateEvenSemester, endDateEvenSemester) || other.endDateEvenSemester == endDateEvenSemester));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,academicYearId,foundationId,startDateOddSemester,endDateOddSemester,isActive,yearRange,startDateEvenSemester,endDateEvenSemester);

@override
String toString() {
  return 'AcademicYear(academicYearId: $academicYearId, foundationId: $foundationId, startDateOddSemester: $startDateOddSemester, endDateOddSemester: $endDateOddSemester, isActive: $isActive, yearRange: $yearRange, startDateEvenSemester: $startDateEvenSemester, endDateEvenSemester: $endDateEvenSemester)';
}


}

/// @nodoc
abstract mixin class $AcademicYearCopyWith<$Res>  {
  factory $AcademicYearCopyWith(AcademicYear value, $Res Function(AcademicYear) _then) = _$AcademicYearCopyWithImpl;
@useResult
$Res call({
 int academicYearId, String foundationId, String startDateOddSemester, String endDateOddSemester, bool isActive, String yearRange, String startDateEvenSemester, String endDateEvenSemester
});




}
/// @nodoc
class _$AcademicYearCopyWithImpl<$Res>
    implements $AcademicYearCopyWith<$Res> {
  _$AcademicYearCopyWithImpl(this._self, this._then);

  final AcademicYear _self;
  final $Res Function(AcademicYear) _then;

/// Create a copy of AcademicYear
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

class _AcademicYear implements AcademicYear {
   _AcademicYear({required this.academicYearId, required this.foundationId, required this.startDateOddSemester, required this.endDateOddSemester, required this.isActive, required this.yearRange, required this.startDateEvenSemester, required this.endDateEvenSemester});
  factory _AcademicYear.fromJson(Map<String, dynamic> json) => _$AcademicYearFromJson(json);

@override final  int academicYearId;
@override final  String foundationId;
@override final  String startDateOddSemester;
@override final  String endDateOddSemester;
@override final  bool isActive;
@override final  String yearRange;
@override final  String startDateEvenSemester;
@override final  String endDateEvenSemester;

/// Create a copy of AcademicYear
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcademicYearCopyWith<_AcademicYear> get copyWith => __$AcademicYearCopyWithImpl<_AcademicYear>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcademicYearToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcademicYear&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId)&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.startDateOddSemester, startDateOddSemester) || other.startDateOddSemester == startDateOddSemester)&&(identical(other.endDateOddSemester, endDateOddSemester) || other.endDateOddSemester == endDateOddSemester)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.yearRange, yearRange) || other.yearRange == yearRange)&&(identical(other.startDateEvenSemester, startDateEvenSemester) || other.startDateEvenSemester == startDateEvenSemester)&&(identical(other.endDateEvenSemester, endDateEvenSemester) || other.endDateEvenSemester == endDateEvenSemester));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,academicYearId,foundationId,startDateOddSemester,endDateOddSemester,isActive,yearRange,startDateEvenSemester,endDateEvenSemester);

@override
String toString() {
  return 'AcademicYear(academicYearId: $academicYearId, foundationId: $foundationId, startDateOddSemester: $startDateOddSemester, endDateOddSemester: $endDateOddSemester, isActive: $isActive, yearRange: $yearRange, startDateEvenSemester: $startDateEvenSemester, endDateEvenSemester: $endDateEvenSemester)';
}


}

/// @nodoc
abstract mixin class _$AcademicYearCopyWith<$Res> implements $AcademicYearCopyWith<$Res> {
  factory _$AcademicYearCopyWith(_AcademicYear value, $Res Function(_AcademicYear) _then) = __$AcademicYearCopyWithImpl;
@override @useResult
$Res call({
 int academicYearId, String foundationId, String startDateOddSemester, String endDateOddSemester, bool isActive, String yearRange, String startDateEvenSemester, String endDateEvenSemester
});




}
/// @nodoc
class __$AcademicYearCopyWithImpl<$Res>
    implements _$AcademicYearCopyWith<$Res> {
  __$AcademicYearCopyWithImpl(this._self, this._then);

  final _AcademicYear _self;
  final $Res Function(_AcademicYear) _then;

/// Create a copy of AcademicYear
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? academicYearId = null,Object? foundationId = null,Object? startDateOddSemester = null,Object? endDateOddSemester = null,Object? isActive = null,Object? yearRange = null,Object? startDateEvenSemester = null,Object? endDateEvenSemester = null,}) {
  return _then(_AcademicYear(
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
