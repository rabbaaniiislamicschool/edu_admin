// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Bill {

 int get billId; String get createdAt; String get studentId; int? get studentFeeId; String get billMonth; int get amount; String get status; String get billName; int get feeTypeId; String? get merchantCode; String? get reference; String? get paymentUrl; String? get updatedAt;
/// Create a copy of Bill
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillCopyWith<Bill> get copyWith => _$BillCopyWithImpl<Bill>(this as Bill, _$identity);

  /// Serializes this Bill to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Bill&&(identical(other.billId, billId) || other.billId == billId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.studentFeeId, studentFeeId) || other.studentFeeId == studentFeeId)&&(identical(other.billMonth, billMonth) || other.billMonth == billMonth)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.billName, billName) || other.billName == billName)&&(identical(other.feeTypeId, feeTypeId) || other.feeTypeId == feeTypeId)&&(identical(other.merchantCode, merchantCode) || other.merchantCode == merchantCode)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,billId,createdAt,studentId,studentFeeId,billMonth,amount,status,billName,feeTypeId,merchantCode,reference,paymentUrl,updatedAt);

@override
String toString() {
  return 'Bill(billId: $billId, createdAt: $createdAt, studentId: $studentId, studentFeeId: $studentFeeId, billMonth: $billMonth, amount: $amount, status: $status, billName: $billName, feeTypeId: $feeTypeId, merchantCode: $merchantCode, reference: $reference, paymentUrl: $paymentUrl, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $BillCopyWith<$Res>  {
  factory $BillCopyWith(Bill value, $Res Function(Bill) _then) = _$BillCopyWithImpl;
@useResult
$Res call({
 int billId, String createdAt, String studentId, int? studentFeeId, String billMonth, int amount, String status, String billName, int feeTypeId, String? merchantCode, String? reference, String? paymentUrl, String? updatedAt
});




}
/// @nodoc
class _$BillCopyWithImpl<$Res>
    implements $BillCopyWith<$Res> {
  _$BillCopyWithImpl(this._self, this._then);

  final Bill _self;
  final $Res Function(Bill) _then;

/// Create a copy of Bill
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

class _Bill implements Bill {
   _Bill({required this.billId, required this.createdAt, required this.studentId, this.studentFeeId, required this.billMonth, required this.amount, required this.status, required this.billName, required this.feeTypeId, this.merchantCode, this.reference, this.paymentUrl, this.updatedAt});
  factory _Bill.fromJson(Map<String, dynamic> json) => _$BillFromJson(json);

@override final  int billId;
@override final  String createdAt;
@override final  String studentId;
@override final  int? studentFeeId;
@override final  String billMonth;
@override final  int amount;
@override final  String status;
@override final  String billName;
@override final  int feeTypeId;
@override final  String? merchantCode;
@override final  String? reference;
@override final  String? paymentUrl;
@override final  String? updatedAt;

/// Create a copy of Bill
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillCopyWith<_Bill> get copyWith => __$BillCopyWithImpl<_Bill>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Bill&&(identical(other.billId, billId) || other.billId == billId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.studentFeeId, studentFeeId) || other.studentFeeId == studentFeeId)&&(identical(other.billMonth, billMonth) || other.billMonth == billMonth)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.billName, billName) || other.billName == billName)&&(identical(other.feeTypeId, feeTypeId) || other.feeTypeId == feeTypeId)&&(identical(other.merchantCode, merchantCode) || other.merchantCode == merchantCode)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,billId,createdAt,studentId,studentFeeId,billMonth,amount,status,billName,feeTypeId,merchantCode,reference,paymentUrl,updatedAt);

@override
String toString() {
  return 'Bill(billId: $billId, createdAt: $createdAt, studentId: $studentId, studentFeeId: $studentFeeId, billMonth: $billMonth, amount: $amount, status: $status, billName: $billName, feeTypeId: $feeTypeId, merchantCode: $merchantCode, reference: $reference, paymentUrl: $paymentUrl, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$BillCopyWith<$Res> implements $BillCopyWith<$Res> {
  factory _$BillCopyWith(_Bill value, $Res Function(_Bill) _then) = __$BillCopyWithImpl;
@override @useResult
$Res call({
 int billId, String createdAt, String studentId, int? studentFeeId, String billMonth, int amount, String status, String billName, int feeTypeId, String? merchantCode, String? reference, String? paymentUrl, String? updatedAt
});




}
/// @nodoc
class __$BillCopyWithImpl<$Res>
    implements _$BillCopyWith<$Res> {
  __$BillCopyWithImpl(this._self, this._then);

  final _Bill _self;
  final $Res Function(_Bill) _then;

/// Create a copy of Bill
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? billId = null,Object? createdAt = null,Object? studentId = null,Object? studentFeeId = freezed,Object? billMonth = null,Object? amount = null,Object? status = null,Object? billName = null,Object? feeTypeId = null,Object? merchantCode = freezed,Object? reference = freezed,Object? paymentUrl = freezed,Object? updatedAt = freezed,}) {
  return _then(_Bill(
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
