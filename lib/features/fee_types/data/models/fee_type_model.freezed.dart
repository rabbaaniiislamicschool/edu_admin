// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fee_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeeTypeModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'fee_type_id', includeToJson: false) int get feeTypeId;@JsonKey(name: 'name') String get name; String? get description;@JsonKey(name: 'frequency') String get frequency;@JsonKey(name: 'created_at', includeToJson: false) String get createdAt;@JsonKey(name: 'foundation_id') String get foundationId;@JsonKey(name: 'deadline_date') int? get deadlineDate;
/// Create a copy of FeeTypeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeTypeModelCopyWith<FeeTypeModel> get copyWith => _$FeeTypeModelCopyWithImpl<FeeTypeModel>(this as FeeTypeModel, _$identity);

  /// Serializes this FeeTypeModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FeeTypeModel'))
    ..add(DiagnosticsProperty('feeTypeId', feeTypeId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('frequency', frequency))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('foundationId', foundationId))..add(DiagnosticsProperty('deadlineDate', deadlineDate));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeTypeModel&&(identical(other.feeTypeId, feeTypeId) || other.feeTypeId == feeTypeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.deadlineDate, deadlineDate) || other.deadlineDate == deadlineDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,feeTypeId,name,description,frequency,createdAt,foundationId,deadlineDate);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FeeTypeModel(feeTypeId: $feeTypeId, name: $name, description: $description, frequency: $frequency, createdAt: $createdAt, foundationId: $foundationId, deadlineDate: $deadlineDate)';
}


}

/// @nodoc
abstract mixin class $FeeTypeModelCopyWith<$Res>  {
  factory $FeeTypeModelCopyWith(FeeTypeModel value, $Res Function(FeeTypeModel) _then) = _$FeeTypeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fee_type_id', includeToJson: false) int feeTypeId,@JsonKey(name: 'name') String name, String? description,@JsonKey(name: 'frequency') String frequency,@JsonKey(name: 'created_at', includeToJson: false) String createdAt,@JsonKey(name: 'foundation_id') String foundationId,@JsonKey(name: 'deadline_date') int? deadlineDate
});




}
/// @nodoc
class _$FeeTypeModelCopyWithImpl<$Res>
    implements $FeeTypeModelCopyWith<$Res> {
  _$FeeTypeModelCopyWithImpl(this._self, this._then);

  final FeeTypeModel _self;
  final $Res Function(FeeTypeModel) _then;

/// Create a copy of FeeTypeModel
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
@JsonSerializable()

class _FeeTypeModel with DiagnosticableTreeMixin implements FeeTypeModel {
  const _FeeTypeModel({@JsonKey(name: 'fee_type_id', includeToJson: false) required this.feeTypeId, @JsonKey(name: 'name') required this.name, this.description, @JsonKey(name: 'frequency') required this.frequency, @JsonKey(name: 'created_at', includeToJson: false) required this.createdAt, @JsonKey(name: 'foundation_id') required this.foundationId, @JsonKey(name: 'deadline_date') this.deadlineDate});
  factory _FeeTypeModel.fromJson(Map<String, dynamic> json) => _$FeeTypeModelFromJson(json);

@override@JsonKey(name: 'fee_type_id', includeToJson: false) final  int feeTypeId;
@override@JsonKey(name: 'name') final  String name;
@override final  String? description;
@override@JsonKey(name: 'frequency') final  String frequency;
@override@JsonKey(name: 'created_at', includeToJson: false) final  String createdAt;
@override@JsonKey(name: 'foundation_id') final  String foundationId;
@override@JsonKey(name: 'deadline_date') final  int? deadlineDate;

/// Create a copy of FeeTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeTypeModelCopyWith<_FeeTypeModel> get copyWith => __$FeeTypeModelCopyWithImpl<_FeeTypeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeeTypeModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FeeTypeModel'))
    ..add(DiagnosticsProperty('feeTypeId', feeTypeId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('frequency', frequency))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('foundationId', foundationId))..add(DiagnosticsProperty('deadlineDate', deadlineDate));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeTypeModel&&(identical(other.feeTypeId, feeTypeId) || other.feeTypeId == feeTypeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.foundationId, foundationId) || other.foundationId == foundationId)&&(identical(other.deadlineDate, deadlineDate) || other.deadlineDate == deadlineDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,feeTypeId,name,description,frequency,createdAt,foundationId,deadlineDate);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FeeTypeModel(feeTypeId: $feeTypeId, name: $name, description: $description, frequency: $frequency, createdAt: $createdAt, foundationId: $foundationId, deadlineDate: $deadlineDate)';
}


}

/// @nodoc
abstract mixin class _$FeeTypeModelCopyWith<$Res> implements $FeeTypeModelCopyWith<$Res> {
  factory _$FeeTypeModelCopyWith(_FeeTypeModel value, $Res Function(_FeeTypeModel) _then) = __$FeeTypeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fee_type_id', includeToJson: false) int feeTypeId,@JsonKey(name: 'name') String name, String? description,@JsonKey(name: 'frequency') String frequency,@JsonKey(name: 'created_at', includeToJson: false) String createdAt,@JsonKey(name: 'foundation_id') String foundationId,@JsonKey(name: 'deadline_date') int? deadlineDate
});




}
/// @nodoc
class __$FeeTypeModelCopyWithImpl<$Res>
    implements _$FeeTypeModelCopyWith<$Res> {
  __$FeeTypeModelCopyWithImpl(this._self, this._then);

  final _FeeTypeModel _self;
  final $Res Function(_FeeTypeModel) _then;

/// Create a copy of FeeTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? feeTypeId = null,Object? name = null,Object? description = freezed,Object? frequency = null,Object? createdAt = null,Object? foundationId = null,Object? deadlineDate = freezed,}) {
  return _then(_FeeTypeModel(
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
