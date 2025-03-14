// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BillEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BillEvent()';
}


}

/// @nodoc
class $BillEventCopyWith<$Res>  {
$BillEventCopyWith(BillEvent _, $Res Function(BillEvent) __);
}


/// @nodoc


class FetchBills implements BillEvent {
  const FetchBills();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchBills);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BillEvent.fetchBills()';
}


}




/// @nodoc


class GetBillById implements BillEvent {
  const GetBillById(this.id);
  

 final  int id;

/// Create a copy of BillEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBillByIdCopyWith<GetBillById> get copyWith => _$GetBillByIdCopyWithImpl<GetBillById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBillById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'BillEvent.getBillById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetBillByIdCopyWith<$Res> implements $BillEventCopyWith<$Res> {
  factory $GetBillByIdCopyWith(GetBillById value, $Res Function(GetBillById) _then) = _$GetBillByIdCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$GetBillByIdCopyWithImpl<$Res>
    implements $GetBillByIdCopyWith<$Res> {
  _$GetBillByIdCopyWithImpl(this._self, this._then);

  final GetBillById _self;
  final $Res Function(GetBillById) _then;

/// Create a copy of BillEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetBillById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CreateBill implements BillEvent {
  const CreateBill(this.bill);
  

 final  Bill bill;

/// Create a copy of BillEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateBillCopyWith<CreateBill> get copyWith => _$CreateBillCopyWithImpl<CreateBill>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateBill&&(identical(other.bill, bill) || other.bill == bill));
}


@override
int get hashCode => Object.hash(runtimeType,bill);

@override
String toString() {
  return 'BillEvent.createBill(bill: $bill)';
}


}

/// @nodoc
abstract mixin class $CreateBillCopyWith<$Res> implements $BillEventCopyWith<$Res> {
  factory $CreateBillCopyWith(CreateBill value, $Res Function(CreateBill) _then) = _$CreateBillCopyWithImpl;
@useResult
$Res call({
 Bill bill
});


$BillCopyWith<$Res> get bill;

}
/// @nodoc
class _$CreateBillCopyWithImpl<$Res>
    implements $CreateBillCopyWith<$Res> {
  _$CreateBillCopyWithImpl(this._self, this._then);

  final CreateBill _self;
  final $Res Function(CreateBill) _then;

/// Create a copy of BillEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bill = null,}) {
  return _then(CreateBill(
null == bill ? _self.bill : bill // ignore: cast_nullable_to_non_nullable
as Bill,
  ));
}

/// Create a copy of BillEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillCopyWith<$Res> get bill {
  
  return $BillCopyWith<$Res>(_self.bill, (value) {
    return _then(_self.copyWith(bill: value));
  });
}
}

/// @nodoc


class DeleteBill implements BillEvent {
  const DeleteBill(this.id);
  

 final  int id;

/// Create a copy of BillEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteBillCopyWith<DeleteBill> get copyWith => _$DeleteBillCopyWithImpl<DeleteBill>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteBill&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'BillEvent.deleteBill(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteBillCopyWith<$Res> implements $BillEventCopyWith<$Res> {
  factory $DeleteBillCopyWith(DeleteBill value, $Res Function(DeleteBill) _then) = _$DeleteBillCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$DeleteBillCopyWithImpl<$Res>
    implements $DeleteBillCopyWith<$Res> {
  _$DeleteBillCopyWithImpl(this._self, this._then);

  final DeleteBill _self;
  final $Res Function(DeleteBill) _then;

/// Create a copy of BillEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteBill(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateBill implements BillEvent {
  const UpdateBill(this.bill);
  

 final  Bill bill;

/// Create a copy of BillEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateBillCopyWith<UpdateBill> get copyWith => _$UpdateBillCopyWithImpl<UpdateBill>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateBill&&(identical(other.bill, bill) || other.bill == bill));
}


@override
int get hashCode => Object.hash(runtimeType,bill);

@override
String toString() {
  return 'BillEvent.updateBill(bill: $bill)';
}


}

/// @nodoc
abstract mixin class $UpdateBillCopyWith<$Res> implements $BillEventCopyWith<$Res> {
  factory $UpdateBillCopyWith(UpdateBill value, $Res Function(UpdateBill) _then) = _$UpdateBillCopyWithImpl;
@useResult
$Res call({
 Bill bill
});


$BillCopyWith<$Res> get bill;

}
/// @nodoc
class _$UpdateBillCopyWithImpl<$Res>
    implements $UpdateBillCopyWith<$Res> {
  _$UpdateBillCopyWithImpl(this._self, this._then);

  final UpdateBill _self;
  final $Res Function(UpdateBill) _then;

/// Create a copy of BillEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bill = null,}) {
  return _then(UpdateBill(
null == bill ? _self.bill : bill // ignore: cast_nullable_to_non_nullable
as Bill,
  ));
}

/// Create a copy of BillEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillCopyWith<$Res> get bill {
  
  return $BillCopyWith<$Res>(_self.bill, (value) {
    return _then(_self.copyWith(bill: value));
  });
}
}

// dart format on
