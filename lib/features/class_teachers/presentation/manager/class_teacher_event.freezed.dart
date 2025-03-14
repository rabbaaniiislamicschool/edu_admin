// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_teacher_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClassTeacherEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ClassTeacherEvent()';
}


}

/// @nodoc
class $ClassTeacherEventCopyWith<$Res>  {
$ClassTeacherEventCopyWith(ClassTeacherEvent _, $Res Function(ClassTeacherEvent) __);
}


/// @nodoc


class FetchClassTeachers implements ClassTeacherEvent {
  const FetchClassTeachers();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchClassTeachers);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ClassTeacherEvent.fetchClassTeachers()';
}


}




/// @nodoc


class GetClassTeacherById implements ClassTeacherEvent {
  const GetClassTeacherById(this.id);
  

 final  int id;

/// Create a copy of ClassTeacherEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetClassTeacherByIdCopyWith<GetClassTeacherById> get copyWith => _$GetClassTeacherByIdCopyWithImpl<GetClassTeacherById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetClassTeacherById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ClassTeacherEvent.getClassTeacherById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetClassTeacherByIdCopyWith<$Res> implements $ClassTeacherEventCopyWith<$Res> {
  factory $GetClassTeacherByIdCopyWith(GetClassTeacherById value, $Res Function(GetClassTeacherById) _then) = _$GetClassTeacherByIdCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$GetClassTeacherByIdCopyWithImpl<$Res>
    implements $GetClassTeacherByIdCopyWith<$Res> {
  _$GetClassTeacherByIdCopyWithImpl(this._self, this._then);

  final GetClassTeacherById _self;
  final $Res Function(GetClassTeacherById) _then;

/// Create a copy of ClassTeacherEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetClassTeacherById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CreateClassTeacher implements ClassTeacherEvent {
  const CreateClassTeacher(this.classTeacher);
  

 final  ClassTeacher classTeacher;

/// Create a copy of ClassTeacherEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateClassTeacherCopyWith<CreateClassTeacher> get copyWith => _$CreateClassTeacherCopyWithImpl<CreateClassTeacher>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateClassTeacher&&(identical(other.classTeacher, classTeacher) || other.classTeacher == classTeacher));
}


@override
int get hashCode => Object.hash(runtimeType,classTeacher);

@override
String toString() {
  return 'ClassTeacherEvent.createClassTeacher(classTeacher: $classTeacher)';
}


}

/// @nodoc
abstract mixin class $CreateClassTeacherCopyWith<$Res> implements $ClassTeacherEventCopyWith<$Res> {
  factory $CreateClassTeacherCopyWith(CreateClassTeacher value, $Res Function(CreateClassTeacher) _then) = _$CreateClassTeacherCopyWithImpl;
@useResult
$Res call({
 ClassTeacher classTeacher
});


$ClassTeacherCopyWith<$Res> get classTeacher;

}
/// @nodoc
class _$CreateClassTeacherCopyWithImpl<$Res>
    implements $CreateClassTeacherCopyWith<$Res> {
  _$CreateClassTeacherCopyWithImpl(this._self, this._then);

  final CreateClassTeacher _self;
  final $Res Function(CreateClassTeacher) _then;

/// Create a copy of ClassTeacherEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? classTeacher = null,}) {
  return _then(CreateClassTeacher(
null == classTeacher ? _self.classTeacher : classTeacher // ignore: cast_nullable_to_non_nullable
as ClassTeacher,
  ));
}

/// Create a copy of ClassTeacherEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassTeacherCopyWith<$Res> get classTeacher {
  
  return $ClassTeacherCopyWith<$Res>(_self.classTeacher, (value) {
    return _then(_self.copyWith(classTeacher: value));
  });
}
}

/// @nodoc


class DeleteClassTeacher implements ClassTeacherEvent {
  const DeleteClassTeacher(this.id);
  

 final  int id;

/// Create a copy of ClassTeacherEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteClassTeacherCopyWith<DeleteClassTeacher> get copyWith => _$DeleteClassTeacherCopyWithImpl<DeleteClassTeacher>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteClassTeacher&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ClassTeacherEvent.deleteClassTeacher(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteClassTeacherCopyWith<$Res> implements $ClassTeacherEventCopyWith<$Res> {
  factory $DeleteClassTeacherCopyWith(DeleteClassTeacher value, $Res Function(DeleteClassTeacher) _then) = _$DeleteClassTeacherCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$DeleteClassTeacherCopyWithImpl<$Res>
    implements $DeleteClassTeacherCopyWith<$Res> {
  _$DeleteClassTeacherCopyWithImpl(this._self, this._then);

  final DeleteClassTeacher _self;
  final $Res Function(DeleteClassTeacher) _then;

/// Create a copy of ClassTeacherEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteClassTeacher(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateClassTeacher implements ClassTeacherEvent {
  const UpdateClassTeacher(this.classTeacher);
  

 final  ClassTeacher classTeacher;

/// Create a copy of ClassTeacherEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateClassTeacherCopyWith<UpdateClassTeacher> get copyWith => _$UpdateClassTeacherCopyWithImpl<UpdateClassTeacher>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateClassTeacher&&(identical(other.classTeacher, classTeacher) || other.classTeacher == classTeacher));
}


@override
int get hashCode => Object.hash(runtimeType,classTeacher);

@override
String toString() {
  return 'ClassTeacherEvent.updateClassTeacher(classTeacher: $classTeacher)';
}


}

/// @nodoc
abstract mixin class $UpdateClassTeacherCopyWith<$Res> implements $ClassTeacherEventCopyWith<$Res> {
  factory $UpdateClassTeacherCopyWith(UpdateClassTeacher value, $Res Function(UpdateClassTeacher) _then) = _$UpdateClassTeacherCopyWithImpl;
@useResult
$Res call({
 ClassTeacher classTeacher
});


$ClassTeacherCopyWith<$Res> get classTeacher;

}
/// @nodoc
class _$UpdateClassTeacherCopyWithImpl<$Res>
    implements $UpdateClassTeacherCopyWith<$Res> {
  _$UpdateClassTeacherCopyWithImpl(this._self, this._then);

  final UpdateClassTeacher _self;
  final $Res Function(UpdateClassTeacher) _then;

/// Create a copy of ClassTeacherEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? classTeacher = null,}) {
  return _then(UpdateClassTeacher(
null == classTeacher ? _self.classTeacher : classTeacher // ignore: cast_nullable_to_non_nullable
as ClassTeacher,
  ));
}

/// Create a copy of ClassTeacherEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassTeacherCopyWith<$Res> get classTeacher {
  
  return $ClassTeacherCopyWith<$Res>(_self.classTeacher, (value) {
    return _then(_self.copyWith(classTeacher: value));
  });
}
}

// dart format on
