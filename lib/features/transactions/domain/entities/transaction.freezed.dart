// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Transaction {

 int get transactionId; String get paymentDate; String get paymentMethod; String get paymentReference; String get status; String? get merchantCode; String? get publisherOrderId; int get paymentAmount; int get billId; String? get description;
/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionCopyWith<Transaction> get copyWith => _$TransactionCopyWithImpl<Transaction>(this as Transaction, _$identity);

  /// Serializes this Transaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Transaction&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.paymentDate, paymentDate) || other.paymentDate == paymentDate)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.paymentReference, paymentReference) || other.paymentReference == paymentReference)&&(identical(other.status, status) || other.status == status)&&(identical(other.merchantCode, merchantCode) || other.merchantCode == merchantCode)&&(identical(other.publisherOrderId, publisherOrderId) || other.publisherOrderId == publisherOrderId)&&(identical(other.paymentAmount, paymentAmount) || other.paymentAmount == paymentAmount)&&(identical(other.billId, billId) || other.billId == billId)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,paymentDate,paymentMethod,paymentReference,status,merchantCode,publisherOrderId,paymentAmount,billId,description);

@override
String toString() {
  return 'Transaction(transactionId: $transactionId, paymentDate: $paymentDate, paymentMethod: $paymentMethod, paymentReference: $paymentReference, status: $status, merchantCode: $merchantCode, publisherOrderId: $publisherOrderId, paymentAmount: $paymentAmount, billId: $billId, description: $description)';
}


}

/// @nodoc
abstract mixin class $TransactionCopyWith<$Res>  {
  factory $TransactionCopyWith(Transaction value, $Res Function(Transaction) _then) = _$TransactionCopyWithImpl;
@useResult
$Res call({
 int transactionId, String paymentDate, String paymentMethod, String paymentReference, String status, String? merchantCode, String? publisherOrderId, int paymentAmount, int billId, String? description
});




}
/// @nodoc
class _$TransactionCopyWithImpl<$Res>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._self, this._then);

  final Transaction _self;
  final $Res Function(Transaction) _then;

/// Create a copy of Transaction
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

class _Transaction implements Transaction {
   _Transaction({required this.transactionId, required this.paymentDate, required this.paymentMethod, required this.paymentReference, required this.status, this.merchantCode, this.publisherOrderId, required this.paymentAmount, required this.billId, this.description});
  factory _Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);

@override final  int transactionId;
@override final  String paymentDate;
@override final  String paymentMethod;
@override final  String paymentReference;
@override final  String status;
@override final  String? merchantCode;
@override final  String? publisherOrderId;
@override final  int paymentAmount;
@override final  int billId;
@override final  String? description;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionCopyWith<_Transaction> get copyWith => __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Transaction&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.paymentDate, paymentDate) || other.paymentDate == paymentDate)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.paymentReference, paymentReference) || other.paymentReference == paymentReference)&&(identical(other.status, status) || other.status == status)&&(identical(other.merchantCode, merchantCode) || other.merchantCode == merchantCode)&&(identical(other.publisherOrderId, publisherOrderId) || other.publisherOrderId == publisherOrderId)&&(identical(other.paymentAmount, paymentAmount) || other.paymentAmount == paymentAmount)&&(identical(other.billId, billId) || other.billId == billId)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,paymentDate,paymentMethod,paymentReference,status,merchantCode,publisherOrderId,paymentAmount,billId,description);

@override
String toString() {
  return 'Transaction(transactionId: $transactionId, paymentDate: $paymentDate, paymentMethod: $paymentMethod, paymentReference: $paymentReference, status: $status, merchantCode: $merchantCode, publisherOrderId: $publisherOrderId, paymentAmount: $paymentAmount, billId: $billId, description: $description)';
}


}

/// @nodoc
abstract mixin class _$TransactionCopyWith<$Res> implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(_Transaction value, $Res Function(_Transaction) _then) = __$TransactionCopyWithImpl;
@override @useResult
$Res call({
 int transactionId, String paymentDate, String paymentMethod, String paymentReference, String status, String? merchantCode, String? publisherOrderId, int paymentAmount, int billId, String? description
});




}
/// @nodoc
class __$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(this._self, this._then);

  final _Transaction _self;
  final $Res Function(_Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? paymentDate = null,Object? paymentMethod = null,Object? paymentReference = null,Object? status = null,Object? merchantCode = freezed,Object? publisherOrderId = freezed,Object? paymentAmount = null,Object? billId = null,Object? description = freezed,}) {
  return _then(_Transaction(
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
