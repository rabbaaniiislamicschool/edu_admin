// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClassEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ClassEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ClassEvent()';
}


}

/// @nodoc
class $ClassEventCopyWith<$Res>  {
$ClassEventCopyWith(ClassEvent _, $Res Function(ClassEvent) __);
}


/// @nodoc


class FetchClass with DiagnosticableTreeMixin implements ClassEvent {
  const FetchClass();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ClassEvent.fetchClass'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchClass);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ClassEvent.fetchClass()';
}


}




/// @nodoc


class GetClassById with DiagnosticableTreeMixin implements ClassEvent {
  const GetClassById(this.id);
  

 final  int id;

/// Create a copy of ClassEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetClassByIdCopyWith<GetClassById> get copyWith => _$GetClassByIdCopyWithImpl<GetClassById>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ClassEvent.getClassById'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetClassById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ClassEvent.getClassById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetClassByIdCopyWith<$Res> implements $ClassEventCopyWith<$Res> {
  factory $GetClassByIdCopyWith(GetClassById value, $Res Function(GetClassById) _then) = _$GetClassByIdCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$GetClassByIdCopyWithImpl<$Res>
    implements $GetClassByIdCopyWith<$Res> {
  _$GetClassByIdCopyWithImpl(this._self, this._then);

  final GetClassById _self;
  final $Res Function(GetClassById) _then;

/// Create a copy of ClassEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetClassById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CreateClass with DiagnosticableTreeMixin implements ClassEvent {
  const CreateClass(this.school);
  

 final  Class school;

/// Create a copy of ClassEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateClassCopyWith<CreateClass> get copyWith => _$CreateClassCopyWithImpl<CreateClass>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ClassEvent.createClass'))
    ..add(DiagnosticsProperty('school', school));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateClass&&(identical(other.school, school) || other.school == school));
}


@override
int get hashCode => Object.hash(runtimeType,school);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ClassEvent.createClass(school: $school)';
}


}

/// @nodoc
abstract mixin class $CreateClassCopyWith<$Res> implements $ClassEventCopyWith<$Res> {
  factory $CreateClassCopyWith(CreateClass value, $Res Function(CreateClass) _then) = _$CreateClassCopyWithImpl;
@useResult
$Res call({
 Class school
});


$ClassCopyWith<$Res> get school;

}
/// @nodoc
class _$CreateClassCopyWithImpl<$Res>
    implements $CreateClassCopyWith<$Res> {
  _$CreateClassCopyWithImpl(this._self, this._then);

  final CreateClass _self;
  final $Res Function(CreateClass) _then;

/// Create a copy of ClassEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? school = null,}) {
  return _then(CreateClass(
null == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as Class,
  ));
}

/// Create a copy of ClassEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassCopyWith<$Res> get school {
  
  return $ClassCopyWith<$Res>(_self.school, (value) {
    return _then(_self.copyWith(school: value));
  });
}
}

/// @nodoc


class DeleteClass with DiagnosticableTreeMixin implements ClassEvent {
  const DeleteClass(this.id);
  

 final  int id;

/// Create a copy of ClassEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteClassCopyWith<DeleteClass> get copyWith => _$DeleteClassCopyWithImpl<DeleteClass>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ClassEvent.deleteClass'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteClass&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ClassEvent.deleteClass(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteClassCopyWith<$Res> implements $ClassEventCopyWith<$Res> {
  factory $DeleteClassCopyWith(DeleteClass value, $Res Function(DeleteClass) _then) = _$DeleteClassCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$DeleteClassCopyWithImpl<$Res>
    implements $DeleteClassCopyWith<$Res> {
  _$DeleteClassCopyWithImpl(this._self, this._then);

  final DeleteClass _self;
  final $Res Function(DeleteClass) _then;

/// Create a copy of ClassEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteClass(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateClass with DiagnosticableTreeMixin implements ClassEvent {
  const UpdateClass(this.school);
  

 final  Class school;

/// Create a copy of ClassEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateClassCopyWith<UpdateClass> get copyWith => _$UpdateClassCopyWithImpl<UpdateClass>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ClassEvent.updateClass'))
    ..add(DiagnosticsProperty('school', school));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateClass&&(identical(other.school, school) || other.school == school));
}


@override
int get hashCode => Object.hash(runtimeType,school);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ClassEvent.updateClass(school: $school)';
}


}

/// @nodoc
abstract mixin class $UpdateClassCopyWith<$Res> implements $ClassEventCopyWith<$Res> {
  factory $UpdateClassCopyWith(UpdateClass value, $Res Function(UpdateClass) _then) = _$UpdateClassCopyWithImpl;
@useResult
$Res call({
 Class school
});


$ClassCopyWith<$Res> get school;

}
/// @nodoc
class _$UpdateClassCopyWithImpl<$Res>
    implements $UpdateClassCopyWith<$Res> {
  _$UpdateClassCopyWithImpl(this._self, this._then);

  final UpdateClass _self;
  final $Res Function(UpdateClass) _then;

/// Create a copy of ClassEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? school = null,}) {
  return _then(UpdateClass(
null == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as Class,
  ));
}

/// Create a copy of ClassEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassCopyWith<$Res> get school {
  
  return $ClassCopyWith<$Res>(_self.school, (value) {
    return _then(_self.copyWith(school: value));
  });
}
}

// dart format on
