// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DivisionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DivisionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DivisionEvent()';
}


}

/// @nodoc
class $DivisionEventCopyWith<$Res>  {
$DivisionEventCopyWith(DivisionEvent _, $Res Function(DivisionEvent) __);
}


/// @nodoc


class FetchDivisions implements DivisionEvent {
  const FetchDivisions();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchDivisions);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DivisionEvent.fetchAllDivisions()';
}


}




/// @nodoc


class GetDivisionById implements DivisionEvent {
  const GetDivisionById(this.id);
  

 final  int id;

/// Create a copy of DivisionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetDivisionByIdCopyWith<GetDivisionById> get copyWith => _$GetDivisionByIdCopyWithImpl<GetDivisionById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDivisionById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DivisionEvent.getDivisionById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetDivisionByIdCopyWith<$Res> implements $DivisionEventCopyWith<$Res> {
  factory $GetDivisionByIdCopyWith(GetDivisionById value, $Res Function(GetDivisionById) _then) = _$GetDivisionByIdCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$GetDivisionByIdCopyWithImpl<$Res>
    implements $GetDivisionByIdCopyWith<$Res> {
  _$GetDivisionByIdCopyWithImpl(this._self, this._then);

  final GetDivisionById _self;
  final $Res Function(GetDivisionById) _then;

/// Create a copy of DivisionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetDivisionById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CreateDivision implements DivisionEvent {
  const CreateDivision(this.division);
  

 final  Division division;

/// Create a copy of DivisionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDivisionCopyWith<CreateDivision> get copyWith => _$CreateDivisionCopyWithImpl<CreateDivision>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDivision&&(identical(other.division, division) || other.division == division));
}


@override
int get hashCode => Object.hash(runtimeType,division);

@override
String toString() {
  return 'DivisionEvent.createDivision(division: $division)';
}


}

/// @nodoc
abstract mixin class $CreateDivisionCopyWith<$Res> implements $DivisionEventCopyWith<$Res> {
  factory $CreateDivisionCopyWith(CreateDivision value, $Res Function(CreateDivision) _then) = _$CreateDivisionCopyWithImpl;
@useResult
$Res call({
 Division division
});


$DivisionCopyWith<$Res> get division;

}
/// @nodoc
class _$CreateDivisionCopyWithImpl<$Res>
    implements $CreateDivisionCopyWith<$Res> {
  _$CreateDivisionCopyWithImpl(this._self, this._then);

  final CreateDivision _self;
  final $Res Function(CreateDivision) _then;

/// Create a copy of DivisionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? division = null,}) {
  return _then(CreateDivision(
null == division ? _self.division : division // ignore: cast_nullable_to_non_nullable
as Division,
  ));
}

/// Create a copy of DivisionEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DivisionCopyWith<$Res> get division {
  
  return $DivisionCopyWith<$Res>(_self.division, (value) {
    return _then(_self.copyWith(division: value));
  });
}
}

/// @nodoc


class CreateDivisions implements DivisionEvent {
  const CreateDivisions(final  List<Division> divisions): _divisions = divisions;
  

 final  List<Division> _divisions;
 List<Division> get divisions {
  if (_divisions is EqualUnmodifiableListView) return _divisions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_divisions);
}


/// Create a copy of DivisionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDivisionsCopyWith<CreateDivisions> get copyWith => _$CreateDivisionsCopyWithImpl<CreateDivisions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDivisions&&const DeepCollectionEquality().equals(other._divisions, _divisions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_divisions));

@override
String toString() {
  return 'DivisionEvent.createDivisions(divisions: $divisions)';
}


}

/// @nodoc
abstract mixin class $CreateDivisionsCopyWith<$Res> implements $DivisionEventCopyWith<$Res> {
  factory $CreateDivisionsCopyWith(CreateDivisions value, $Res Function(CreateDivisions) _then) = _$CreateDivisionsCopyWithImpl;
@useResult
$Res call({
 List<Division> divisions
});




}
/// @nodoc
class _$CreateDivisionsCopyWithImpl<$Res>
    implements $CreateDivisionsCopyWith<$Res> {
  _$CreateDivisionsCopyWithImpl(this._self, this._then);

  final CreateDivisions _self;
  final $Res Function(CreateDivisions) _then;

/// Create a copy of DivisionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? divisions = null,}) {
  return _then(CreateDivisions(
null == divisions ? _self._divisions : divisions // ignore: cast_nullable_to_non_nullable
as List<Division>,
  ));
}


}

/// @nodoc


class DeleteDivision implements DivisionEvent {
  const DeleteDivision(this.id);
  

 final  int id;

/// Create a copy of DivisionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteDivisionCopyWith<DeleteDivision> get copyWith => _$DeleteDivisionCopyWithImpl<DeleteDivision>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteDivision&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DivisionEvent.deleteDivision(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteDivisionCopyWith<$Res> implements $DivisionEventCopyWith<$Res> {
  factory $DeleteDivisionCopyWith(DeleteDivision value, $Res Function(DeleteDivision) _then) = _$DeleteDivisionCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$DeleteDivisionCopyWithImpl<$Res>
    implements $DeleteDivisionCopyWith<$Res> {
  _$DeleteDivisionCopyWithImpl(this._self, this._then);

  final DeleteDivision _self;
  final $Res Function(DeleteDivision) _then;

/// Create a copy of DivisionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteDivision(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateDivision implements DivisionEvent {
  const UpdateDivision(this.division);
  

 final  Division division;

/// Create a copy of DivisionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDivisionCopyWith<UpdateDivision> get copyWith => _$UpdateDivisionCopyWithImpl<UpdateDivision>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDivision&&(identical(other.division, division) || other.division == division));
}


@override
int get hashCode => Object.hash(runtimeType,division);

@override
String toString() {
  return 'DivisionEvent.updateDivision(division: $division)';
}


}

/// @nodoc
abstract mixin class $UpdateDivisionCopyWith<$Res> implements $DivisionEventCopyWith<$Res> {
  factory $UpdateDivisionCopyWith(UpdateDivision value, $Res Function(UpdateDivision) _then) = _$UpdateDivisionCopyWithImpl;
@useResult
$Res call({
 Division division
});


$DivisionCopyWith<$Res> get division;

}
/// @nodoc
class _$UpdateDivisionCopyWithImpl<$Res>
    implements $UpdateDivisionCopyWith<$Res> {
  _$UpdateDivisionCopyWithImpl(this._self, this._then);

  final UpdateDivision _self;
  final $Res Function(UpdateDivision) _then;

/// Create a copy of DivisionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? division = null,}) {
  return _then(UpdateDivision(
null == division ? _self.division : division // ignore: cast_nullable_to_non_nullable
as Division,
  ));
}

/// Create a copy of DivisionEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DivisionCopyWith<$Res> get division {
  
  return $DivisionCopyWith<$Res>(_self.division, (value) {
    return _then(_self.copyWith(division: value));
  });
}
}

// dart format on
