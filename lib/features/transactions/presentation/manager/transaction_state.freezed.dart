// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionState {

 TransactionStatus get status; String? get errorMessage; String? get successMessage; List<Transaction>? get transactions; Transaction? get transaction;
/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionStateCopyWith<TransactionState> get copyWith => _$TransactionStateCopyWithImpl<TransactionState>(this as TransactionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other.transactions, transactions)&&(identical(other.transaction, transaction) || other.transaction == transaction));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(transactions),transaction);

@override
String toString() {
  return 'TransactionState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, transactions: $transactions, transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class $TransactionStateCopyWith<$Res>  {
  factory $TransactionStateCopyWith(TransactionState value, $Res Function(TransactionState) _then) = _$TransactionStateCopyWithImpl;
@useResult
$Res call({
 TransactionStatus status, String? errorMessage, String? successMessage, List<Transaction>? transactions, Transaction? transaction
});


$TransactionCopyWith<$Res>? get transaction;

}
/// @nodoc
class _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._self, this._then);

  final TransactionState _self;
  final $Res Function(TransactionState) _then;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? transactions = freezed,Object? transaction = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TransactionStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,transactions: freezed == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>?,transaction: freezed == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as Transaction?,
  ));
}
/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionCopyWith<$Res>? get transaction {
    if (_self.transaction == null) {
    return null;
  }

  return $TransactionCopyWith<$Res>(_self.transaction!, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}


/// @nodoc


class _TransactionState implements TransactionState {
  const _TransactionState({this.status = TransactionStatus.initial, this.errorMessage, this.successMessage, final  List<Transaction>? transactions, this.transaction}): _transactions = transactions;
  

@override@JsonKey() final  TransactionStatus status;
@override final  String? errorMessage;
@override final  String? successMessage;
 final  List<Transaction>? _transactions;
@override List<Transaction>? get transactions {
  final value = _transactions;
  if (value == null) return null;
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Transaction? transaction;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionStateCopyWith<_TransactionState> get copyWith => __$TransactionStateCopyWithImpl<_TransactionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other._transactions, _transactions)&&(identical(other.transaction, transaction) || other.transaction == transaction));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(_transactions),transaction);

@override
String toString() {
  return 'TransactionState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, transactions: $transactions, transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class _$TransactionStateCopyWith<$Res> implements $TransactionStateCopyWith<$Res> {
  factory _$TransactionStateCopyWith(_TransactionState value, $Res Function(_TransactionState) _then) = __$TransactionStateCopyWithImpl;
@override @useResult
$Res call({
 TransactionStatus status, String? errorMessage, String? successMessage, List<Transaction>? transactions, Transaction? transaction
});


@override $TransactionCopyWith<$Res>? get transaction;

}
/// @nodoc
class __$TransactionStateCopyWithImpl<$Res>
    implements _$TransactionStateCopyWith<$Res> {
  __$TransactionStateCopyWithImpl(this._self, this._then);

  final _TransactionState _self;
  final $Res Function(_TransactionState) _then;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? transactions = freezed,Object? transaction = freezed,}) {
  return _then(_TransactionState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TransactionStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,transactions: freezed == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>?,transaction: freezed == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as Transaction?,
  ));
}

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionCopyWith<$Res>? get transaction {
    if (_self.transaction == null) {
    return null;
  }

  return $TransactionCopyWith<$Res>(_self.transaction!, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}

// dart format on
