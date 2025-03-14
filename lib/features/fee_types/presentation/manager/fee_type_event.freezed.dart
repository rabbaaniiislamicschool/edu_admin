// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fee_type_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeeTypeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeTypeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeeTypeEvent()';
}


}

/// @nodoc
class $FeeTypeEventCopyWith<$Res>  {
$FeeTypeEventCopyWith(FeeTypeEvent _, $Res Function(FeeTypeEvent) __);
}


/// @nodoc


class FetchFeeTypes implements FeeTypeEvent {
  const FetchFeeTypes();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchFeeTypes);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeeTypeEvent.fetchFeeTypes()';
}


}




/// @nodoc


class GetFeeTypeById implements FeeTypeEvent {
  const GetFeeTypeById(this.id);
  

 final  int id;

/// Create a copy of FeeTypeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetFeeTypeByIdCopyWith<GetFeeTypeById> get copyWith => _$GetFeeTypeByIdCopyWithImpl<GetFeeTypeById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFeeTypeById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'FeeTypeEvent.getFeeTypeById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetFeeTypeByIdCopyWith<$Res> implements $FeeTypeEventCopyWith<$Res> {
  factory $GetFeeTypeByIdCopyWith(GetFeeTypeById value, $Res Function(GetFeeTypeById) _then) = _$GetFeeTypeByIdCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$GetFeeTypeByIdCopyWithImpl<$Res>
    implements $GetFeeTypeByIdCopyWith<$Res> {
  _$GetFeeTypeByIdCopyWithImpl(this._self, this._then);

  final GetFeeTypeById _self;
  final $Res Function(GetFeeTypeById) _then;

/// Create a copy of FeeTypeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetFeeTypeById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CreateFeeType implements FeeTypeEvent {
  const CreateFeeType(this.feeType);
  

 final  FeeType feeType;

/// Create a copy of FeeTypeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateFeeTypeCopyWith<CreateFeeType> get copyWith => _$CreateFeeTypeCopyWithImpl<CreateFeeType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateFeeType&&(identical(other.feeType, feeType) || other.feeType == feeType));
}


@override
int get hashCode => Object.hash(runtimeType,feeType);

@override
String toString() {
  return 'FeeTypeEvent.createFeeType(feeType: $feeType)';
}


}

/// @nodoc
abstract mixin class $CreateFeeTypeCopyWith<$Res> implements $FeeTypeEventCopyWith<$Res> {
  factory $CreateFeeTypeCopyWith(CreateFeeType value, $Res Function(CreateFeeType) _then) = _$CreateFeeTypeCopyWithImpl;
@useResult
$Res call({
 FeeType feeType
});


$FeeTypeCopyWith<$Res> get feeType;

}
/// @nodoc
class _$CreateFeeTypeCopyWithImpl<$Res>
    implements $CreateFeeTypeCopyWith<$Res> {
  _$CreateFeeTypeCopyWithImpl(this._self, this._then);

  final CreateFeeType _self;
  final $Res Function(CreateFeeType) _then;

/// Create a copy of FeeTypeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? feeType = null,}) {
  return _then(CreateFeeType(
null == feeType ? _self.feeType : feeType // ignore: cast_nullable_to_non_nullable
as FeeType,
  ));
}

/// Create a copy of FeeTypeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeeTypeCopyWith<$Res> get feeType {
  
  return $FeeTypeCopyWith<$Res>(_self.feeType, (value) {
    return _then(_self.copyWith(feeType: value));
  });
}
}

/// @nodoc


class DeleteFeeType implements FeeTypeEvent {
  const DeleteFeeType(this.id);
  

 final  int id;

/// Create a copy of FeeTypeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteFeeTypeCopyWith<DeleteFeeType> get copyWith => _$DeleteFeeTypeCopyWithImpl<DeleteFeeType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteFeeType&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'FeeTypeEvent.deleteFeeType(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteFeeTypeCopyWith<$Res> implements $FeeTypeEventCopyWith<$Res> {
  factory $DeleteFeeTypeCopyWith(DeleteFeeType value, $Res Function(DeleteFeeType) _then) = _$DeleteFeeTypeCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$DeleteFeeTypeCopyWithImpl<$Res>
    implements $DeleteFeeTypeCopyWith<$Res> {
  _$DeleteFeeTypeCopyWithImpl(this._self, this._then);

  final DeleteFeeType _self;
  final $Res Function(DeleteFeeType) _then;

/// Create a copy of FeeTypeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteFeeType(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateFeeType implements FeeTypeEvent {
  const UpdateFeeType(this.feeType);
  

 final  FeeType feeType;

/// Create a copy of FeeTypeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFeeTypeCopyWith<UpdateFeeType> get copyWith => _$UpdateFeeTypeCopyWithImpl<UpdateFeeType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFeeType&&(identical(other.feeType, feeType) || other.feeType == feeType));
}


@override
int get hashCode => Object.hash(runtimeType,feeType);

@override
String toString() {
  return 'FeeTypeEvent.updateFeeType(feeType: $feeType)';
}


}

/// @nodoc
abstract mixin class $UpdateFeeTypeCopyWith<$Res> implements $FeeTypeEventCopyWith<$Res> {
  factory $UpdateFeeTypeCopyWith(UpdateFeeType value, $Res Function(UpdateFeeType) _then) = _$UpdateFeeTypeCopyWithImpl;
@useResult
$Res call({
 FeeType feeType
});


$FeeTypeCopyWith<$Res> get feeType;

}
/// @nodoc
class _$UpdateFeeTypeCopyWithImpl<$Res>
    implements $UpdateFeeTypeCopyWith<$Res> {
  _$UpdateFeeTypeCopyWithImpl(this._self, this._then);

  final UpdateFeeType _self;
  final $Res Function(UpdateFeeType) _then;

/// Create a copy of FeeTypeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? feeType = null,}) {
  return _then(UpdateFeeType(
null == feeType ? _self.feeType : feeType // ignore: cast_nullable_to_non_nullable
as FeeType,
  ));
}

/// Create a copy of FeeTypeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeeTypeCopyWith<$Res> get feeType {
  
  return $FeeTypeCopyWith<$Res>(_self.feeType, (value) {
    return _then(_self.copyWith(feeType: value));
  });
}
}

// dart format on
