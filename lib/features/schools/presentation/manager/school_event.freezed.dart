// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SchoolEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SchoolEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SchoolEvent()';
}


}

/// @nodoc
class $SchoolEventCopyWith<$Res>  {
$SchoolEventCopyWith(SchoolEvent _, $Res Function(SchoolEvent) __);
}


/// @nodoc


class FetchSchools implements SchoolEvent {
  const FetchSchools();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchSchools);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SchoolEvent.fetchSchools()';
}


}




/// @nodoc


class GetSchoolById implements SchoolEvent {
  const GetSchoolById(this.id);
  

 final  int id;

/// Create a copy of SchoolEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetSchoolByIdCopyWith<GetSchoolById> get copyWith => _$GetSchoolByIdCopyWithImpl<GetSchoolById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSchoolById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'SchoolEvent.getSchoolById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetSchoolByIdCopyWith<$Res> implements $SchoolEventCopyWith<$Res> {
  factory $GetSchoolByIdCopyWith(GetSchoolById value, $Res Function(GetSchoolById) _then) = _$GetSchoolByIdCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$GetSchoolByIdCopyWithImpl<$Res>
    implements $GetSchoolByIdCopyWith<$Res> {
  _$GetSchoolByIdCopyWithImpl(this._self, this._then);

  final GetSchoolById _self;
  final $Res Function(GetSchoolById) _then;

/// Create a copy of SchoolEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetSchoolById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CreateSchool implements SchoolEvent {
  const CreateSchool(this.school);
  

 final  School school;

/// Create a copy of SchoolEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateSchoolCopyWith<CreateSchool> get copyWith => _$CreateSchoolCopyWithImpl<CreateSchool>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateSchool&&(identical(other.school, school) || other.school == school));
}


@override
int get hashCode => Object.hash(runtimeType,school);

@override
String toString() {
  return 'SchoolEvent.createSchool(school: $school)';
}


}

/// @nodoc
abstract mixin class $CreateSchoolCopyWith<$Res> implements $SchoolEventCopyWith<$Res> {
  factory $CreateSchoolCopyWith(CreateSchool value, $Res Function(CreateSchool) _then) = _$CreateSchoolCopyWithImpl;
@useResult
$Res call({
 School school
});


$SchoolCopyWith<$Res> get school;

}
/// @nodoc
class _$CreateSchoolCopyWithImpl<$Res>
    implements $CreateSchoolCopyWith<$Res> {
  _$CreateSchoolCopyWithImpl(this._self, this._then);

  final CreateSchool _self;
  final $Res Function(CreateSchool) _then;

/// Create a copy of SchoolEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? school = null,}) {
  return _then(CreateSchool(
null == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as School,
  ));
}

/// Create a copy of SchoolEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchoolCopyWith<$Res> get school {
  
  return $SchoolCopyWith<$Res>(_self.school, (value) {
    return _then(_self.copyWith(school: value));
  });
}
}

/// @nodoc


class DeleteSchool implements SchoolEvent {
  const DeleteSchool(this.id);
  

 final  int id;

/// Create a copy of SchoolEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteSchoolCopyWith<DeleteSchool> get copyWith => _$DeleteSchoolCopyWithImpl<DeleteSchool>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteSchool&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'SchoolEvent.deleteSchool(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteSchoolCopyWith<$Res> implements $SchoolEventCopyWith<$Res> {
  factory $DeleteSchoolCopyWith(DeleteSchool value, $Res Function(DeleteSchool) _then) = _$DeleteSchoolCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$DeleteSchoolCopyWithImpl<$Res>
    implements $DeleteSchoolCopyWith<$Res> {
  _$DeleteSchoolCopyWithImpl(this._self, this._then);

  final DeleteSchool _self;
  final $Res Function(DeleteSchool) _then;

/// Create a copy of SchoolEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteSchool(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateSchool implements SchoolEvent {
  const UpdateSchool(this.school);
  

 final  School school;

/// Create a copy of SchoolEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateSchoolCopyWith<UpdateSchool> get copyWith => _$UpdateSchoolCopyWithImpl<UpdateSchool>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateSchool&&(identical(other.school, school) || other.school == school));
}


@override
int get hashCode => Object.hash(runtimeType,school);

@override
String toString() {
  return 'SchoolEvent.updateSchool(school: $school)';
}


}

/// @nodoc
abstract mixin class $UpdateSchoolCopyWith<$Res> implements $SchoolEventCopyWith<$Res> {
  factory $UpdateSchoolCopyWith(UpdateSchool value, $Res Function(UpdateSchool) _then) = _$UpdateSchoolCopyWithImpl;
@useResult
$Res call({
 School school
});


$SchoolCopyWith<$Res> get school;

}
/// @nodoc
class _$UpdateSchoolCopyWithImpl<$Res>
    implements $UpdateSchoolCopyWith<$Res> {
  _$UpdateSchoolCopyWithImpl(this._self, this._then);

  final UpdateSchool _self;
  final $Res Function(UpdateSchool) _then;

/// Create a copy of SchoolEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? school = null,}) {
  return _then(UpdateSchool(
null == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as School,
  ));
}

/// Create a copy of SchoolEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchoolCopyWith<$Res> get school {
  
  return $SchoolCopyWith<$Res>(_self.school, (value) {
    return _then(_self.copyWith(school: value));
  });
}
}

// dart format on
