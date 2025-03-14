// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_class_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StudentClassEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentClassEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StudentClassEvent()';
}


}

/// @nodoc
class $StudentClassEventCopyWith<$Res>  {
$StudentClassEventCopyWith(StudentClassEvent _, $Res Function(StudentClassEvent) __);
}


/// @nodoc


class FetchStudentClasss implements StudentClassEvent {
  const FetchStudentClasss();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchStudentClasss);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StudentClassEvent.fetchStudentClasss()';
}


}




/// @nodoc


class GetStudentClassById implements StudentClassEvent {
  const GetStudentClassById(this.id);
  

 final  int id;

/// Create a copy of StudentClassEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetStudentClassByIdCopyWith<GetStudentClassById> get copyWith => _$GetStudentClassByIdCopyWithImpl<GetStudentClassById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetStudentClassById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'StudentClassEvent.getStudentClassById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetStudentClassByIdCopyWith<$Res> implements $StudentClassEventCopyWith<$Res> {
  factory $GetStudentClassByIdCopyWith(GetStudentClassById value, $Res Function(GetStudentClassById) _then) = _$GetStudentClassByIdCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$GetStudentClassByIdCopyWithImpl<$Res>
    implements $GetStudentClassByIdCopyWith<$Res> {
  _$GetStudentClassByIdCopyWithImpl(this._self, this._then);

  final GetStudentClassById _self;
  final $Res Function(GetStudentClassById) _then;

/// Create a copy of StudentClassEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetStudentClassById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CreateStudentClass implements StudentClassEvent {
  const CreateStudentClass(this.studentClass);
  

 final  StudentClass studentClass;

/// Create a copy of StudentClassEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateStudentClassCopyWith<CreateStudentClass> get copyWith => _$CreateStudentClassCopyWithImpl<CreateStudentClass>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateStudentClass&&(identical(other.studentClass, studentClass) || other.studentClass == studentClass));
}


@override
int get hashCode => Object.hash(runtimeType,studentClass);

@override
String toString() {
  return 'StudentClassEvent.createStudentClass(studentClass: $studentClass)';
}


}

/// @nodoc
abstract mixin class $CreateStudentClassCopyWith<$Res> implements $StudentClassEventCopyWith<$Res> {
  factory $CreateStudentClassCopyWith(CreateStudentClass value, $Res Function(CreateStudentClass) _then) = _$CreateStudentClassCopyWithImpl;
@useResult
$Res call({
 StudentClass studentClass
});


$StudentClassCopyWith<$Res> get studentClass;

}
/// @nodoc
class _$CreateStudentClassCopyWithImpl<$Res>
    implements $CreateStudentClassCopyWith<$Res> {
  _$CreateStudentClassCopyWithImpl(this._self, this._then);

  final CreateStudentClass _self;
  final $Res Function(CreateStudentClass) _then;

/// Create a copy of StudentClassEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? studentClass = null,}) {
  return _then(CreateStudentClass(
null == studentClass ? _self.studentClass : studentClass // ignore: cast_nullable_to_non_nullable
as StudentClass,
  ));
}

/// Create a copy of StudentClassEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentClassCopyWith<$Res> get studentClass {
  
  return $StudentClassCopyWith<$Res>(_self.studentClass, (value) {
    return _then(_self.copyWith(studentClass: value));
  });
}
}

/// @nodoc


class DeleteStudentClass implements StudentClassEvent {
  const DeleteStudentClass(this.id);
  

 final  int id;

/// Create a copy of StudentClassEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteStudentClassCopyWith<DeleteStudentClass> get copyWith => _$DeleteStudentClassCopyWithImpl<DeleteStudentClass>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteStudentClass&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'StudentClassEvent.deleteStudentClass(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteStudentClassCopyWith<$Res> implements $StudentClassEventCopyWith<$Res> {
  factory $DeleteStudentClassCopyWith(DeleteStudentClass value, $Res Function(DeleteStudentClass) _then) = _$DeleteStudentClassCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$DeleteStudentClassCopyWithImpl<$Res>
    implements $DeleteStudentClassCopyWith<$Res> {
  _$DeleteStudentClassCopyWithImpl(this._self, this._then);

  final DeleteStudentClass _self;
  final $Res Function(DeleteStudentClass) _then;

/// Create a copy of StudentClassEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteStudentClass(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateStudentClass implements StudentClassEvent {
  const UpdateStudentClass(this.studentClass);
  

 final  StudentClass studentClass;

/// Create a copy of StudentClassEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateStudentClassCopyWith<UpdateStudentClass> get copyWith => _$UpdateStudentClassCopyWithImpl<UpdateStudentClass>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateStudentClass&&(identical(other.studentClass, studentClass) || other.studentClass == studentClass));
}


@override
int get hashCode => Object.hash(runtimeType,studentClass);

@override
String toString() {
  return 'StudentClassEvent.updateStudentClass(studentClass: $studentClass)';
}


}

/// @nodoc
abstract mixin class $UpdateStudentClassCopyWith<$Res> implements $StudentClassEventCopyWith<$Res> {
  factory $UpdateStudentClassCopyWith(UpdateStudentClass value, $Res Function(UpdateStudentClass) _then) = _$UpdateStudentClassCopyWithImpl;
@useResult
$Res call({
 StudentClass studentClass
});


$StudentClassCopyWith<$Res> get studentClass;

}
/// @nodoc
class _$UpdateStudentClassCopyWithImpl<$Res>
    implements $UpdateStudentClassCopyWith<$Res> {
  _$UpdateStudentClassCopyWithImpl(this._self, this._then);

  final UpdateStudentClass _self;
  final $Res Function(UpdateStudentClass) _then;

/// Create a copy of StudentClassEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? studentClass = null,}) {
  return _then(UpdateStudentClass(
null == studentClass ? _self.studentClass : studentClass // ignore: cast_nullable_to_non_nullable
as StudentClass,
  ));
}

/// Create a copy of StudentClassEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentClassCopyWith<$Res> get studentClass {
  
  return $StudentClassCopyWith<$Res>(_self.studentClass, (value) {
    return _then(_self.copyWith(studentClass: value));
  });
}
}

// dart format on
