// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BillState {

 BillStatus get status; String? get errorMessage; String? get successMessage; List<Bill>? get bills; Bill? get bill;
/// Create a copy of BillState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillStateCopyWith<BillState> get copyWith => _$BillStateCopyWithImpl<BillState>(this as BillState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other.bills, bills)&&(identical(other.bill, bill) || other.bill == bill));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(bills),bill);

@override
String toString() {
  return 'BillState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, bills: $bills, bill: $bill)';
}


}

/// @nodoc
abstract mixin class $BillStateCopyWith<$Res>  {
  factory $BillStateCopyWith(BillState value, $Res Function(BillState) _then) = _$BillStateCopyWithImpl;
@useResult
$Res call({
 BillStatus status, String? errorMessage, String? successMessage, List<Bill>? bills, Bill? bill
});


$BillCopyWith<$Res>? get bill;

}
/// @nodoc
class _$BillStateCopyWithImpl<$Res>
    implements $BillStateCopyWith<$Res> {
  _$BillStateCopyWithImpl(this._self, this._then);

  final BillState _self;
  final $Res Function(BillState) _then;

/// Create a copy of BillState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? bills = freezed,Object? bill = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BillStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,bills: freezed == bills ? _self.bills : bills // ignore: cast_nullable_to_non_nullable
as List<Bill>?,bill: freezed == bill ? _self.bill : bill // ignore: cast_nullable_to_non_nullable
as Bill?,
  ));
}
/// Create a copy of BillState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillCopyWith<$Res>? get bill {
    if (_self.bill == null) {
    return null;
  }

  return $BillCopyWith<$Res>(_self.bill!, (value) {
    return _then(_self.copyWith(bill: value));
  });
}
}


/// @nodoc


class _BillState implements BillState {
  const _BillState({this.status = BillStatus.initial, this.errorMessage, this.successMessage, final  List<Bill>? bills, this.bill}): _bills = bills;
  

@override@JsonKey() final  BillStatus status;
@override final  String? errorMessage;
@override final  String? successMessage;
 final  List<Bill>? _bills;
@override List<Bill>? get bills {
  final value = _bills;
  if (value == null) return null;
  if (_bills is EqualUnmodifiableListView) return _bills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Bill? bill;

/// Create a copy of BillState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillStateCopyWith<_BillState> get copyWith => __$BillStateCopyWithImpl<_BillState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other._bills, _bills)&&(identical(other.bill, bill) || other.bill == bill));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(_bills),bill);

@override
String toString() {
  return 'BillState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, bills: $bills, bill: $bill)';
}


}

/// @nodoc
abstract mixin class _$BillStateCopyWith<$Res> implements $BillStateCopyWith<$Res> {
  factory _$BillStateCopyWith(_BillState value, $Res Function(_BillState) _then) = __$BillStateCopyWithImpl;
@override @useResult
$Res call({
 BillStatus status, String? errorMessage, String? successMessage, List<Bill>? bills, Bill? bill
});


@override $BillCopyWith<$Res>? get bill;

}
/// @nodoc
class __$BillStateCopyWithImpl<$Res>
    implements _$BillStateCopyWith<$Res> {
  __$BillStateCopyWithImpl(this._self, this._then);

  final _BillState _self;
  final $Res Function(_BillState) _then;

/// Create a copy of BillState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? bills = freezed,Object? bill = freezed,}) {
  return _then(_BillState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BillStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,bills: freezed == bills ? _self._bills : bills // ignore: cast_nullable_to_non_nullable
as List<Bill>?,bill: freezed == bill ? _self.bill : bill // ignore: cast_nullable_to_non_nullable
as Bill?,
  ));
}

/// Create a copy of BillState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillCopyWith<$Res>? get bill {
    if (_self.bill == null) {
    return null;
  }

  return $BillCopyWith<$Res>(_self.bill!, (value) {
    return _then(_self.copyWith(bill: value));
  });
}
}

// dart format on
