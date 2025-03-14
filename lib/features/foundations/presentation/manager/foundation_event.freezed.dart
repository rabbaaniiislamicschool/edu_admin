// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'foundation_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FoundationEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FoundationEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoundationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FoundationEvent()';
}


}

/// @nodoc
class $FoundationEventCopyWith<$Res>  {
$FoundationEventCopyWith(FoundationEvent _, $Res Function(FoundationEvent) __);
}


/// @nodoc


class FetchFoundations with DiagnosticableTreeMixin implements FoundationEvent {
  const FetchFoundations();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FoundationEvent.fetchFoundations'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchFoundations);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FoundationEvent.fetchFoundations()';
}


}




/// @nodoc


class GetFoundationById with DiagnosticableTreeMixin implements FoundationEvent {
  const GetFoundationById(this.id);
  

 final  String id;

/// Create a copy of FoundationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetFoundationByIdCopyWith<GetFoundationById> get copyWith => _$GetFoundationByIdCopyWithImpl<GetFoundationById>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FoundationEvent.getFoundationById'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFoundationById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FoundationEvent.getFoundationById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetFoundationByIdCopyWith<$Res> implements $FoundationEventCopyWith<$Res> {
  factory $GetFoundationByIdCopyWith(GetFoundationById value, $Res Function(GetFoundationById) _then) = _$GetFoundationByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetFoundationByIdCopyWithImpl<$Res>
    implements $GetFoundationByIdCopyWith<$Res> {
  _$GetFoundationByIdCopyWithImpl(this._self, this._then);

  final GetFoundationById _self;
  final $Res Function(GetFoundationById) _then;

/// Create a copy of FoundationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetFoundationById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CreateFoundation with DiagnosticableTreeMixin implements FoundationEvent {
  const CreateFoundation(this.foundation);
  

 final  Foundation foundation;

/// Create a copy of FoundationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateFoundationCopyWith<CreateFoundation> get copyWith => _$CreateFoundationCopyWithImpl<CreateFoundation>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FoundationEvent.createFoundation'))
    ..add(DiagnosticsProperty('foundation', foundation));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateFoundation&&(identical(other.foundation, foundation) || other.foundation == foundation));
}


@override
int get hashCode => Object.hash(runtimeType,foundation);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FoundationEvent.createFoundation(foundation: $foundation)';
}


}

/// @nodoc
abstract mixin class $CreateFoundationCopyWith<$Res> implements $FoundationEventCopyWith<$Res> {
  factory $CreateFoundationCopyWith(CreateFoundation value, $Res Function(CreateFoundation) _then) = _$CreateFoundationCopyWithImpl;
@useResult
$Res call({
 Foundation foundation
});


$FoundationCopyWith<$Res> get foundation;

}
/// @nodoc
class _$CreateFoundationCopyWithImpl<$Res>
    implements $CreateFoundationCopyWith<$Res> {
  _$CreateFoundationCopyWithImpl(this._self, this._then);

  final CreateFoundation _self;
  final $Res Function(CreateFoundation) _then;

/// Create a copy of FoundationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? foundation = null,}) {
  return _then(CreateFoundation(
null == foundation ? _self.foundation : foundation // ignore: cast_nullable_to_non_nullable
as Foundation,
  ));
}

/// Create a copy of FoundationEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoundationCopyWith<$Res> get foundation {
  
  return $FoundationCopyWith<$Res>(_self.foundation, (value) {
    return _then(_self.copyWith(foundation: value));
  });
}
}

/// @nodoc


class CreateFoundations with DiagnosticableTreeMixin implements FoundationEvent {
  const CreateFoundations(final  List<Foundation> foundations): _foundations = foundations;
  

 final  List<Foundation> _foundations;
 List<Foundation> get foundations {
  if (_foundations is EqualUnmodifiableListView) return _foundations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_foundations);
}


/// Create a copy of FoundationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateFoundationsCopyWith<CreateFoundations> get copyWith => _$CreateFoundationsCopyWithImpl<CreateFoundations>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FoundationEvent.createFoundations'))
    ..add(DiagnosticsProperty('foundations', foundations));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateFoundations&&const DeepCollectionEquality().equals(other._foundations, _foundations));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_foundations));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FoundationEvent.createFoundations(foundations: $foundations)';
}


}

/// @nodoc
abstract mixin class $CreateFoundationsCopyWith<$Res> implements $FoundationEventCopyWith<$Res> {
  factory $CreateFoundationsCopyWith(CreateFoundations value, $Res Function(CreateFoundations) _then) = _$CreateFoundationsCopyWithImpl;
@useResult
$Res call({
 List<Foundation> foundations
});




}
/// @nodoc
class _$CreateFoundationsCopyWithImpl<$Res>
    implements $CreateFoundationsCopyWith<$Res> {
  _$CreateFoundationsCopyWithImpl(this._self, this._then);

  final CreateFoundations _self;
  final $Res Function(CreateFoundations) _then;

/// Create a copy of FoundationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? foundations = null,}) {
  return _then(CreateFoundations(
null == foundations ? _self._foundations : foundations // ignore: cast_nullable_to_non_nullable
as List<Foundation>,
  ));
}


}

/// @nodoc


class DeleteFoundation with DiagnosticableTreeMixin implements FoundationEvent {
  const DeleteFoundation(this.id);
  

 final  String id;

/// Create a copy of FoundationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteFoundationCopyWith<DeleteFoundation> get copyWith => _$DeleteFoundationCopyWithImpl<DeleteFoundation>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FoundationEvent.deleteFoundation'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteFoundation&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FoundationEvent.deleteFoundation(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteFoundationCopyWith<$Res> implements $FoundationEventCopyWith<$Res> {
  factory $DeleteFoundationCopyWith(DeleteFoundation value, $Res Function(DeleteFoundation) _then) = _$DeleteFoundationCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteFoundationCopyWithImpl<$Res>
    implements $DeleteFoundationCopyWith<$Res> {
  _$DeleteFoundationCopyWithImpl(this._self, this._then);

  final DeleteFoundation _self;
  final $Res Function(DeleteFoundation) _then;

/// Create a copy of FoundationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteFoundation(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateFoundation with DiagnosticableTreeMixin implements FoundationEvent {
  const UpdateFoundation(this.foundation);
  

 final  Foundation foundation;

/// Create a copy of FoundationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFoundationCopyWith<UpdateFoundation> get copyWith => _$UpdateFoundationCopyWithImpl<UpdateFoundation>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FoundationEvent.updateFoundation'))
    ..add(DiagnosticsProperty('foundation', foundation));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFoundation&&(identical(other.foundation, foundation) || other.foundation == foundation));
}


@override
int get hashCode => Object.hash(runtimeType,foundation);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FoundationEvent.updateFoundation(foundation: $foundation)';
}


}

/// @nodoc
abstract mixin class $UpdateFoundationCopyWith<$Res> implements $FoundationEventCopyWith<$Res> {
  factory $UpdateFoundationCopyWith(UpdateFoundation value, $Res Function(UpdateFoundation) _then) = _$UpdateFoundationCopyWithImpl;
@useResult
$Res call({
 Foundation foundation
});


$FoundationCopyWith<$Res> get foundation;

}
/// @nodoc
class _$UpdateFoundationCopyWithImpl<$Res>
    implements $UpdateFoundationCopyWith<$Res> {
  _$UpdateFoundationCopyWithImpl(this._self, this._then);

  final UpdateFoundation _self;
  final $Res Function(UpdateFoundation) _then;

/// Create a copy of FoundationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? foundation = null,}) {
  return _then(UpdateFoundation(
null == foundation ? _self.foundation : foundation // ignore: cast_nullable_to_non_nullable
as Foundation,
  ));
}

/// Create a copy of FoundationEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoundationCopyWith<$Res> get foundation {
  
  return $FoundationCopyWith<$Res>(_self.foundation, (value) {
    return _then(_self.copyWith(foundation: value));
  });
}
}

// dart format on
