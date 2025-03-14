// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BillModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'bill_id', includeToJson: false) int get billId;@JsonKey(name: 'created_at', includeToJson: false) String get createdAt;@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'student_fee_id') int? get studentFeeId;@JsonKey(name: 'bill_month') String get billMonth; int get amount; String get status;@JsonKey(name: 'bill_name') String get billName;@JsonKey(name: 'fee_type_id') int get feeTypeId;@JsonKey(name: 'merchant_code') String? get merchantCode; String? get reference;@JsonKey(name: 'payment_url') String? get paymentUrl;@JsonKey(name: 'updated_at', includeIfNull: false) String? get updatedAt;
/// Create a copy of BillModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillModelCopyWith<BillModel> get copyWith => _$BillModelCopyWithImpl<BillModel>(this as BillModel, _$identity);

  /// Serializes this BillModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BillModel'))
    ..add(DiagnosticsProperty('billId', billId))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('studentFeeId', studentFeeId))..add(DiagnosticsProperty('billMonth', billMonth))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('billName', billName))..add(DiagnosticsProperty('feeTypeId', feeTypeId))..add(DiagnosticsProperty('merchantCode', merchantCode))..add(DiagnosticsProperty('reference', reference))..add(DiagnosticsProperty('paymentUrl', paymentUrl))..add(DiagnosticsProperty('updatedAt', updatedAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillModel&&(identical(other.billId, billId) || other.billId == billId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.studentFeeId, studentFeeId) || other.studentFeeId == studentFeeId)&&(identical(other.billMonth, billMonth) || other.billMonth == billMonth)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.billName, billName) || other.billName == billName)&&(identical(other.feeTypeId, feeTypeId) || other.feeTypeId == feeTypeId)&&(identical(other.merchantCode, merchantCode) || other.merchantCode == merchantCode)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,billId,createdAt,studentId,studentFeeId,billMonth,amount,status,billName,feeTypeId,merchantCode,reference,paymentUrl,updatedAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BillModel(billId: $billId, createdAt: $createdAt, studentId: $studentId, studentFeeId: $studentFeeId, billMonth: $billMonth, amount: $amount, status: $status, billName: $billName, feeTypeId: $feeTypeId, merchantCode: $merchantCode, reference: $reference, paymentUrl: $paymentUrl, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $BillModelCopyWith<$Res>  {
  factory $BillModelCopyWith(BillModel value, $Res Function(BillModel) _then) = _$BillModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'bill_id', includeToJson: false) int billId,@JsonKey(name: 'created_at', includeToJson: false) String createdAt,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'student_fee_id') int? studentFeeId,@JsonKey(name: 'bill_month') String billMonth, int amount, String status,@JsonKey(name: 'bill_name') String billName,@JsonKey(name: 'fee_type_id') int feeTypeId,@JsonKey(name: 'merchant_code') String? merchantCode, String? reference,@JsonKey(name: 'payment_url') String? paymentUrl,@JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt
});




}
/// @nodoc
class _$BillModelCopyWithImpl<$Res>
    implements $BillModelCopyWith<$Res> {
  _$BillModelCopyWithImpl(this._self, this._then);

  final BillModel _self;
  final $Res Function(BillModel) _then;

/// Create a copy of BillModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? billId = null,Object? createdAt = null,Object? studentId = null,Object? studentFeeId = freezed,Object? billMonth = null,Object? amount = null,Object? status = null,Object? billName = null,Object? feeTypeId = null,Object? merchantCode = freezed,Object? reference = freezed,Object? paymentUrl = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
billId: null == billId ? _self.billId : billId // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,studentFeeId: freezed == studentFeeId ? _self.studentFeeId : studentFeeId // ignore: cast_nullable_to_non_nullable
as int?,billMonth: null == billMonth ? _self.billMonth : billMonth // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,billName: null == billName ? _self.billName : billName // ignore: cast_nullable_to_non_nullable
as String,feeTypeId: null == feeTypeId ? _self.feeTypeId : feeTypeId // ignore: cast_nullable_to_non_nullable
as int,merchantCode: freezed == merchantCode ? _self.merchantCode : merchantCode // ignore: cast_nullable_to_non_nullable
as String?,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,paymentUrl: freezed == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BillModel with DiagnosticableTreeMixin implements BillModel {
  const _BillModel({@JsonKey(name: 'bill_id', includeToJson: false) required this.billId, @JsonKey(name: 'created_at', includeToJson: false) required this.createdAt, @JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'student_fee_id') this.studentFeeId, @JsonKey(name: 'bill_month') required this.billMonth, required this.amount, required this.status, @JsonKey(name: 'bill_name') required this.billName, @JsonKey(name: 'fee_type_id') required this.feeTypeId, @JsonKey(name: 'merchant_code') this.merchantCode, this.reference, @JsonKey(name: 'payment_url') this.paymentUrl, @JsonKey(name: 'updated_at', includeIfNull: false) this.updatedAt});
  factory _BillModel.fromJson(Map<String, dynamic> json) => _$BillModelFromJson(json);

@override@JsonKey(name: 'bill_id', includeToJson: false) final  int billId;
@override@JsonKey(name: 'created_at', includeToJson: false) final  String createdAt;
@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'student_fee_id') final  int? studentFeeId;
@override@JsonKey(name: 'bill_month') final  String billMonth;
@override final  int amount;
@override final  String status;
@override@JsonKey(name: 'bill_name') final  String billName;
@override@JsonKey(name: 'fee_type_id') final  int feeTypeId;
@override@JsonKey(name: 'merchant_code') final  String? merchantCode;
@override final  String? reference;
@override@JsonKey(name: 'payment_url') final  String? paymentUrl;
@override@JsonKey(name: 'updated_at', includeIfNull: false) final  String? updatedAt;

/// Create a copy of BillModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillModelCopyWith<_BillModel> get copyWith => __$BillModelCopyWithImpl<_BillModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BillModel'))
    ..add(DiagnosticsProperty('billId', billId))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('studentFeeId', studentFeeId))..add(DiagnosticsProperty('billMonth', billMonth))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('billName', billName))..add(DiagnosticsProperty('feeTypeId', feeTypeId))..add(DiagnosticsProperty('merchantCode', merchantCode))..add(DiagnosticsProperty('reference', reference))..add(DiagnosticsProperty('paymentUrl', paymentUrl))..add(DiagnosticsProperty('updatedAt', updatedAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillModel&&(identical(other.billId, billId) || other.billId == billId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.studentFeeId, studentFeeId) || other.studentFeeId == studentFeeId)&&(identical(other.billMonth, billMonth) || other.billMonth == billMonth)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.billName, billName) || other.billName == billName)&&(identical(other.feeTypeId, feeTypeId) || other.feeTypeId == feeTypeId)&&(identical(other.merchantCode, merchantCode) || other.merchantCode == merchantCode)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,billId,createdAt,studentId,studentFeeId,billMonth,amount,status,billName,feeTypeId,merchantCode,reference,paymentUrl,updatedAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BillModel(billId: $billId, createdAt: $createdAt, studentId: $studentId, studentFeeId: $studentFeeId, billMonth: $billMonth, amount: $amount, status: $status, billName: $billName, feeTypeId: $feeTypeId, merchantCode: $merchantCode, reference: $reference, paymentUrl: $paymentUrl, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$BillModelCopyWith<$Res> implements $BillModelCopyWith<$Res> {
  factory _$BillModelCopyWith(_BillModel value, $Res Function(_BillModel) _then) = __$BillModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'bill_id', includeToJson: false) int billId,@JsonKey(name: 'created_at', includeToJson: false) String createdAt,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'student_fee_id') int? studentFeeId,@JsonKey(name: 'bill_month') String billMonth, int amount, String status,@JsonKey(name: 'bill_name') String billName,@JsonKey(name: 'fee_type_id') int feeTypeId,@JsonKey(name: 'merchant_code') String? merchantCode, String? reference,@JsonKey(name: 'payment_url') String? paymentUrl,@JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt
});




}
/// @nodoc
class __$BillModelCopyWithImpl<$Res>
    implements _$BillModelCopyWith<$Res> {
  __$BillModelCopyWithImpl(this._self, this._then);

  final _BillModel _self;
  final $Res Function(_BillModel) _then;

/// Create a copy of BillModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? billId = null,Object? createdAt = null,Object? studentId = null,Object? studentFeeId = freezed,Object? billMonth = null,Object? amount = null,Object? status = null,Object? billName = null,Object? feeTypeId = null,Object? merchantCode = freezed,Object? reference = freezed,Object? paymentUrl = freezed,Object? updatedAt = freezed,}) {
  return _then(_BillModel(
billId: null == billId ? _self.billId : billId // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,studentFeeId: freezed == studentFeeId ? _self.studentFeeId : studentFeeId // ignore: cast_nullable_to_non_nullable
as int?,billMonth: null == billMonth ? _self.billMonth : billMonth // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,billName: null == billName ? _self.billName : billName // ignore: cast_nullable_to_non_nullable
as String,feeTypeId: null == feeTypeId ? _self.feeTypeId : feeTypeId // ignore: cast_nullable_to_non_nullable
as int,merchantCode: freezed == merchantCode ? _self.merchantCode : merchantCode // ignore: cast_nullable_to_non_nullable
as String?,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,paymentUrl: freezed == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
