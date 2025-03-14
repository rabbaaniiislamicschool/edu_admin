// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_fee_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClassFeeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassFeeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ClassFeeEvent()';
}


}

/// @nodoc
class $ClassFeeEventCopyWith<$Res>  {
$ClassFeeEventCopyWith(ClassFeeEvent _, $Res Function(ClassFeeEvent) __);
}


/// @nodoc


class FetchClassFees implements ClassFeeEvent {
  const FetchClassFees();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchClassFees);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ClassFeeEvent.fetchClassFees()';
}


}




/// @nodoc


class GetClassFeeById implements ClassFeeEvent {
  const GetClassFeeById(this.id);
  

 final  int id;

/// Create a copy of ClassFeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetClassFeeByIdCopyWith<GetClassFeeById> get copyWith => _$GetClassFeeByIdCopyWithImpl<GetClassFeeById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetClassFeeById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ClassFeeEvent.getClassFeeById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetClassFeeByIdCopyWith<$Res> implements $ClassFeeEventCopyWith<$Res> {
  factory $GetClassFeeByIdCopyWith(GetClassFeeById value, $Res Function(GetClassFeeById) _then) = _$GetClassFeeByIdCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$GetClassFeeByIdCopyWithImpl<$Res>
    implements $GetClassFeeByIdCopyWith<$Res> {
  _$GetClassFeeByIdCopyWithImpl(this._self, this._then);

  final GetClassFeeById _self;
  final $Res Function(GetClassFeeById) _then;

/// Create a copy of ClassFeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetClassFeeById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CreateClassFee implements ClassFeeEvent {
  const CreateClassFee(this.classFee);
  

 final  ClassFee classFee;

/// Create a copy of ClassFeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateClassFeeCopyWith<CreateClassFee> get copyWith => _$CreateClassFeeCopyWithImpl<CreateClassFee>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateClassFee&&(identical(other.classFee, classFee) || other.classFee == classFee));
}


@override
int get hashCode => Object.hash(runtimeType,classFee);

@override
String toString() {
  return 'ClassFeeEvent.createClassFee(classFee: $classFee)';
}


}

/// @nodoc
abstract mixin class $CreateClassFeeCopyWith<$Res> implements $ClassFeeEventCopyWith<$Res> {
  factory $CreateClassFeeCopyWith(CreateClassFee value, $Res Function(CreateClassFee) _then) = _$CreateClassFeeCopyWithImpl;
@useResult
$Res call({
 ClassFee classFee
});


$ClassFeeCopyWith<$Res> get classFee;

}
/// @nodoc
class _$CreateClassFeeCopyWithImpl<$Res>
    implements $CreateClassFeeCopyWith<$Res> {
  _$CreateClassFeeCopyWithImpl(this._self, this._then);

  final CreateClassFee _self;
  final $Res Function(CreateClassFee) _then;

/// Create a copy of ClassFeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? classFee = null,}) {
  return _then(CreateClassFee(
null == classFee ? _self.classFee : classFee // ignore: cast_nullable_to_non_nullable
as ClassFee,
  ));
}

/// Create a copy of ClassFeeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassFeeCopyWith<$Res> get classFee {
  
  return $ClassFeeCopyWith<$Res>(_self.classFee, (value) {
    return _then(_self.copyWith(classFee: value));
  });
}
}

/// @nodoc


class DeleteClassFee implements ClassFeeEvent {
  const DeleteClassFee(this.id);
  

 final  int id;

/// Create a copy of ClassFeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteClassFeeCopyWith<DeleteClassFee> get copyWith => _$DeleteClassFeeCopyWithImpl<DeleteClassFee>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteClassFee&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ClassFeeEvent.deleteClassFee(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteClassFeeCopyWith<$Res> implements $ClassFeeEventCopyWith<$Res> {
  factory $DeleteClassFeeCopyWith(DeleteClassFee value, $Res Function(DeleteClassFee) _then) = _$DeleteClassFeeCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$DeleteClassFeeCopyWithImpl<$Res>
    implements $DeleteClassFeeCopyWith<$Res> {
  _$DeleteClassFeeCopyWithImpl(this._self, this._then);

  final DeleteClassFee _self;
  final $Res Function(DeleteClassFee) _then;

/// Create a copy of ClassFeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteClassFee(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateClassFee implements ClassFeeEvent {
  const UpdateClassFee(this.classFee);
  

 final  ClassFee classFee;

/// Create a copy of ClassFeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateClassFeeCopyWith<UpdateClassFee> get copyWith => _$UpdateClassFeeCopyWithImpl<UpdateClassFee>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateClassFee&&(identical(other.classFee, classFee) || other.classFee == classFee));
}


@override
int get hashCode => Object.hash(runtimeType,classFee);

@override
String toString() {
  return 'ClassFeeEvent.updateClassFee(classFee: $classFee)';
}


}

/// @nodoc
abstract mixin class $UpdateClassFeeCopyWith<$Res> implements $ClassFeeEventCopyWith<$Res> {
  factory $UpdateClassFeeCopyWith(UpdateClassFee value, $Res Function(UpdateClassFee) _then) = _$UpdateClassFeeCopyWithImpl;
@useResult
$Res call({
 ClassFee classFee
});


$ClassFeeCopyWith<$Res> get classFee;

}
/// @nodoc
class _$UpdateClassFeeCopyWithImpl<$Res>
    implements $UpdateClassFeeCopyWith<$Res> {
  _$UpdateClassFeeCopyWithImpl(this._self, this._then);

  final UpdateClassFee _self;
  final $Res Function(UpdateClassFee) _then;

/// Create a copy of ClassFeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? classFee = null,}) {
  return _then(UpdateClassFee(
null == classFee ? _self.classFee : classFee // ignore: cast_nullable_to_non_nullable
as ClassFee,
  ));
}

/// Create a copy of ClassFeeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassFeeCopyWith<$Res> get classFee {
  
  return $ClassFeeCopyWith<$Res>(_self.classFee, (value) {
    return _then(_self.copyWith(classFee: value));
  });
}
}

// dart format on
