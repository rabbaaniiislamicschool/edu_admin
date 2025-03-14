// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'transaction_id', includeToJson: false) int get transactionId;@JsonKey(name: 'payment_date') String get paymentDate;@JsonKey(name: 'payment_method') String get paymentMethod;@JsonKey(name: 'payment_reference') String get paymentReference;@JsonKey(name: 'status') String get status;@JsonKey(name: 'merchant_code') String? get merchantCode;@JsonKey(name: 'publisher_order_id') String? get publisherOrderId;@JsonKey(name: 'payment_amount') int get paymentAmount;@JsonKey(name: 'bill_id') int get billId;@JsonKey(name: 'description') String? get description;
/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionModelCopyWith<TransactionModel> get copyWith => _$TransactionModelCopyWithImpl<TransactionModel>(this as TransactionModel, _$identity);

  /// Serializes this TransactionModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TransactionModel'))
    ..add(DiagnosticsProperty('transactionId', transactionId))..add(DiagnosticsProperty('paymentDate', paymentDate))..add(DiagnosticsProperty('paymentMethod', paymentMethod))..add(DiagnosticsProperty('paymentReference', paymentReference))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('merchantCode', merchantCode))..add(DiagnosticsProperty('publisherOrderId', publisherOrderId))..add(DiagnosticsProperty('paymentAmount', paymentAmount))..add(DiagnosticsProperty('billId', billId))..add(DiagnosticsProperty('description', description));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionModel&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.paymentDate, paymentDate) || other.paymentDate == paymentDate)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.paymentReference, paymentReference) || other.paymentReference == paymentReference)&&(identical(other.status, status) || other.status == status)&&(identical(other.merchantCode, merchantCode) || other.merchantCode == merchantCode)&&(identical(other.publisherOrderId, publisherOrderId) || other.publisherOrderId == publisherOrderId)&&(identical(other.paymentAmount, paymentAmount) || other.paymentAmount == paymentAmount)&&(identical(other.billId, billId) || other.billId == billId)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,paymentDate,paymentMethod,paymentReference,status,merchantCode,publisherOrderId,paymentAmount,billId,description);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TransactionModel(transactionId: $transactionId, paymentDate: $paymentDate, paymentMethod: $paymentMethod, paymentReference: $paymentReference, status: $status, merchantCode: $merchantCode, publisherOrderId: $publisherOrderId, paymentAmount: $paymentAmount, billId: $billId, description: $description)';
}


}

/// @nodoc
abstract mixin class $TransactionModelCopyWith<$Res>  {
  factory $TransactionModelCopyWith(TransactionModel value, $Res Function(TransactionModel) _then) = _$TransactionModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'transaction_id', includeToJson: false) int transactionId,@JsonKey(name: 'payment_date') String paymentDate,@JsonKey(name: 'payment_method') String paymentMethod,@JsonKey(name: 'payment_reference') String paymentReference,@JsonKey(name: 'status') String status,@JsonKey(name: 'merchant_code') String? merchantCode,@JsonKey(name: 'publisher_order_id') String? publisherOrderId,@JsonKey(name: 'payment_amount') int paymentAmount,@JsonKey(name: 'bill_id') int billId,@JsonKey(name: 'description') String? description
});




}
/// @nodoc
class _$TransactionModelCopyWithImpl<$Res>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._self, this._then);

  final TransactionModel _self;
  final $Res Function(TransactionModel) _then;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? paymentDate = null,Object? paymentMethod = null,Object? paymentReference = null,Object? status = null,Object? merchantCode = freezed,Object? publisherOrderId = freezed,Object? paymentAmount = null,Object? billId = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,paymentDate: null == paymentDate ? _self.paymentDate : paymentDate // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,paymentReference: null == paymentReference ? _self.paymentReference : paymentReference // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,merchantCode: freezed == merchantCode ? _self.merchantCode : merchantCode // ignore: cast_nullable_to_non_nullable
as String?,publisherOrderId: freezed == publisherOrderId ? _self.publisherOrderId : publisherOrderId // ignore: cast_nullable_to_non_nullable
as String?,paymentAmount: null == paymentAmount ? _self.paymentAmount : paymentAmount // ignore: cast_nullable_to_non_nullable
as int,billId: null == billId ? _self.billId : billId // ignore: cast_nullable_to_non_nullable
as int,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TransactionModel with DiagnosticableTreeMixin implements TransactionModel {
  const _TransactionModel({@JsonKey(name: 'transaction_id', includeToJson: false) required this.transactionId, @JsonKey(name: 'payment_date') required this.paymentDate, @JsonKey(name: 'payment_method') required this.paymentMethod, @JsonKey(name: 'payment_reference') required this.paymentReference, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'merchant_code') this.merchantCode, @JsonKey(name: 'publisher_order_id') this.publisherOrderId, @JsonKey(name: 'payment_amount') required this.paymentAmount, @JsonKey(name: 'bill_id') required this.billId, @JsonKey(name: 'description') this.description});
  factory _TransactionModel.fromJson(Map<String, dynamic> json) => _$TransactionModelFromJson(json);

@override@JsonKey(name: 'transaction_id', includeToJson: false) final  int transactionId;
@override@JsonKey(name: 'payment_date') final  String paymentDate;
@override@JsonKey(name: 'payment_method') final  String paymentMethod;
@override@JsonKey(name: 'payment_reference') final  String paymentReference;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'merchant_code') final  String? merchantCode;
@override@JsonKey(name: 'publisher_order_id') final  String? publisherOrderId;
@override@JsonKey(name: 'payment_amount') final  int paymentAmount;
@override@JsonKey(name: 'bill_id') final  int billId;
@override@JsonKey(name: 'description') final  String? description;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionModelCopyWith<_TransactionModel> get copyWith => __$TransactionModelCopyWithImpl<_TransactionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TransactionModel'))
    ..add(DiagnosticsProperty('transactionId', transactionId))..add(DiagnosticsProperty('paymentDate', paymentDate))..add(DiagnosticsProperty('paymentMethod', paymentMethod))..add(DiagnosticsProperty('paymentReference', paymentReference))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('merchantCode', merchantCode))..add(DiagnosticsProperty('publisherOrderId', publisherOrderId))..add(DiagnosticsProperty('paymentAmount', paymentAmount))..add(DiagnosticsProperty('billId', billId))..add(DiagnosticsProperty('description', description));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionModel&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.paymentDate, paymentDate) || other.paymentDate == paymentDate)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.paymentReference, paymentReference) || other.paymentReference == paymentReference)&&(identical(other.status, status) || other.status == status)&&(identical(other.merchantCode, merchantCode) || other.merchantCode == merchantCode)&&(identical(other.publisherOrderId, publisherOrderId) || other.publisherOrderId == publisherOrderId)&&(identical(other.paymentAmount, paymentAmount) || other.paymentAmount == paymentAmount)&&(identical(other.billId, billId) || other.billId == billId)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,paymentDate,paymentMethod,paymentReference,status,merchantCode,publisherOrderId,paymentAmount,billId,description);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TransactionModel(transactionId: $transactionId, paymentDate: $paymentDate, paymentMethod: $paymentMethod, paymentReference: $paymentReference, status: $status, merchantCode: $merchantCode, publisherOrderId: $publisherOrderId, paymentAmount: $paymentAmount, billId: $billId, description: $description)';
}


}

/// @nodoc
abstract mixin class _$TransactionModelCopyWith<$Res> implements $TransactionModelCopyWith<$Res> {
  factory _$TransactionModelCopyWith(_TransactionModel value, $Res Function(_TransactionModel) _then) = __$TransactionModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'transaction_id', includeToJson: false) int transactionId,@JsonKey(name: 'payment_date') String paymentDate,@JsonKey(name: 'payment_method') String paymentMethod,@JsonKey(name: 'payment_reference') String paymentReference,@JsonKey(name: 'status') String status,@JsonKey(name: 'merchant_code') String? merchantCode,@JsonKey(name: 'publisher_order_id') String? publisherOrderId,@JsonKey(name: 'payment_amount') int paymentAmount,@JsonKey(name: 'bill_id') int billId,@JsonKey(name: 'description') String? description
});




}
/// @nodoc
class __$TransactionModelCopyWithImpl<$Res>
    implements _$TransactionModelCopyWith<$Res> {
  __$TransactionModelCopyWithImpl(this._self, this._then);

  final _TransactionModel _self;
  final $Res Function(_TransactionModel) _then;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? paymentDate = null,Object? paymentMethod = null,Object? paymentReference = null,Object? status = null,Object? merchantCode = freezed,Object? publisherOrderId = freezed,Object? paymentAmount = null,Object? billId = null,Object? description = freezed,}) {
  return _then(_TransactionModel(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,paymentDate: null == paymentDate ? _self.paymentDate : paymentDate // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,paymentReference: null == paymentReference ? _self.paymentReference : paymentReference // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,merchantCode: freezed == merchantCode ? _self.merchantCode : merchantCode // ignore: cast_nullable_to_non_nullable
as String?,publisherOrderId: freezed == publisherOrderId ? _self.publisherOrderId : publisherOrderId // ignore: cast_nullable_to_non_nullable
as String?,paymentAmount: null == paymentAmount ? _self.paymentAmount : paymentAmount // ignore: cast_nullable_to_non_nullable
as int,billId: null == billId ? _self.billId : billId // ignore: cast_nullable_to_non_nullable
as int,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
