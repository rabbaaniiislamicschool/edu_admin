// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionEvent()';
}


}

/// @nodoc
class $TransactionEventCopyWith<$Res>  {
$TransactionEventCopyWith(TransactionEvent _, $Res Function(TransactionEvent) __);
}


/// @nodoc


class FetchTransactions implements TransactionEvent {
  const FetchTransactions();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchTransactions);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionEvent.fetchTransactions()';
}


}




/// @nodoc


class GetTransactionById implements TransactionEvent {
  const GetTransactionById(this.id);
  

 final  int id;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTransactionByIdCopyWith<GetTransactionById> get copyWith => _$GetTransactionByIdCopyWithImpl<GetTransactionById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTransactionById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TransactionEvent.getTransactionById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetTransactionByIdCopyWith<$Res> implements $TransactionEventCopyWith<$Res> {
  factory $GetTransactionByIdCopyWith(GetTransactionById value, $Res Function(GetTransactionById) _then) = _$GetTransactionByIdCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$GetTransactionByIdCopyWithImpl<$Res>
    implements $GetTransactionByIdCopyWith<$Res> {
  _$GetTransactionByIdCopyWithImpl(this._self, this._then);

  final GetTransactionById _self;
  final $Res Function(GetTransactionById) _then;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetTransactionById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CreateTransaction implements TransactionEvent {
  const CreateTransaction(this.transaction);
  

 final  Transaction transaction;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTransactionCopyWith<CreateTransaction> get copyWith => _$CreateTransactionCopyWithImpl<CreateTransaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTransaction&&(identical(other.transaction, transaction) || other.transaction == transaction));
}


@override
int get hashCode => Object.hash(runtimeType,transaction);

@override
String toString() {
  return 'TransactionEvent.createTransaction(transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class $CreateTransactionCopyWith<$Res> implements $TransactionEventCopyWith<$Res> {
  factory $CreateTransactionCopyWith(CreateTransaction value, $Res Function(CreateTransaction) _then) = _$CreateTransactionCopyWithImpl;
@useResult
$Res call({
 Transaction transaction
});


$TransactionCopyWith<$Res> get transaction;

}
/// @nodoc
class _$CreateTransactionCopyWithImpl<$Res>
    implements $CreateTransactionCopyWith<$Res> {
  _$CreateTransactionCopyWithImpl(this._self, this._then);

  final CreateTransaction _self;
  final $Res Function(CreateTransaction) _then;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transaction = null,}) {
  return _then(CreateTransaction(
null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as Transaction,
  ));
}

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionCopyWith<$Res> get transaction {
  
  return $TransactionCopyWith<$Res>(_self.transaction, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}

/// @nodoc


class DeleteTransaction implements TransactionEvent {
  const DeleteTransaction(this.id);
  

 final  int id;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteTransactionCopyWith<DeleteTransaction> get copyWith => _$DeleteTransactionCopyWithImpl<DeleteTransaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteTransaction&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TransactionEvent.deleteTransaction(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteTransactionCopyWith<$Res> implements $TransactionEventCopyWith<$Res> {
  factory $DeleteTransactionCopyWith(DeleteTransaction value, $Res Function(DeleteTransaction) _then) = _$DeleteTransactionCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$DeleteTransactionCopyWithImpl<$Res>
    implements $DeleteTransactionCopyWith<$Res> {
  _$DeleteTransactionCopyWithImpl(this._self, this._then);

  final DeleteTransaction _self;
  final $Res Function(DeleteTransaction) _then;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteTransaction(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateTransaction implements TransactionEvent {
  const UpdateTransaction(this.transaction);
  

 final  Transaction transaction;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTransactionCopyWith<UpdateTransaction> get copyWith => _$UpdateTransactionCopyWithImpl<UpdateTransaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTransaction&&(identical(other.transaction, transaction) || other.transaction == transaction));
}


@override
int get hashCode => Object.hash(runtimeType,transaction);

@override
String toString() {
  return 'TransactionEvent.updateTransaction(transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class $UpdateTransactionCopyWith<$Res> implements $TransactionEventCopyWith<$Res> {
  factory $UpdateTransactionCopyWith(UpdateTransaction value, $Res Function(UpdateTransaction) _then) = _$UpdateTransactionCopyWithImpl;
@useResult
$Res call({
 Transaction transaction
});


$TransactionCopyWith<$Res> get transaction;

}
/// @nodoc
class _$UpdateTransactionCopyWithImpl<$Res>
    implements $UpdateTransactionCopyWith<$Res> {
  _$UpdateTransactionCopyWithImpl(this._self, this._then);

  final UpdateTransaction _self;
  final $Res Function(UpdateTransaction) _then;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transaction = null,}) {
  return _then(UpdateTransaction(
null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as Transaction,
  ));
}

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionCopyWith<$Res> get transaction {
  
  return $TransactionCopyWith<$Res>(_self.transaction, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}

// dart format on
