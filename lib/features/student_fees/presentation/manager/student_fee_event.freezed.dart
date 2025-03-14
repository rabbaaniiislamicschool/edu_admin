// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_fee_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StudentFeeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentFeeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StudentFeeEvent()';
}


}

/// @nodoc
class $StudentFeeEventCopyWith<$Res>  {
$StudentFeeEventCopyWith(StudentFeeEvent _, $Res Function(StudentFeeEvent) __);
}


/// @nodoc


class FetchStudentFees implements StudentFeeEvent {
  const FetchStudentFees();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchStudentFees);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StudentFeeEvent.fetchStudentFees()';
}


}




/// @nodoc


class GetStudentFeeById implements StudentFeeEvent {
  const GetStudentFeeById(this.id);
  

 final  int id;

/// Create a copy of StudentFeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetStudentFeeByIdCopyWith<GetStudentFeeById> get copyWith => _$GetStudentFeeByIdCopyWithImpl<GetStudentFeeById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetStudentFeeById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'StudentFeeEvent.getStudentFeeById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetStudentFeeByIdCopyWith<$Res> implements $StudentFeeEventCopyWith<$Res> {
  factory $GetStudentFeeByIdCopyWith(GetStudentFeeById value, $Res Function(GetStudentFeeById) _then) = _$GetStudentFeeByIdCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$GetStudentFeeByIdCopyWithImpl<$Res>
    implements $GetStudentFeeByIdCopyWith<$Res> {
  _$GetStudentFeeByIdCopyWithImpl(this._self, this._then);

  final GetStudentFeeById _self;
  final $Res Function(GetStudentFeeById) _then;

/// Create a copy of StudentFeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetStudentFeeById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CreateStudentFee implements StudentFeeEvent {
  const CreateStudentFee(this.studentFee);
  

 final  StudentFee studentFee;

/// Create a copy of StudentFeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateStudentFeeCopyWith<CreateStudentFee> get copyWith => _$CreateStudentFeeCopyWithImpl<CreateStudentFee>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateStudentFee&&(identical(other.studentFee, studentFee) || other.studentFee == studentFee));
}


@override
int get hashCode => Object.hash(runtimeType,studentFee);

@override
String toString() {
  return 'StudentFeeEvent.createStudentFee(studentFee: $studentFee)';
}


}

/// @nodoc
abstract mixin class $CreateStudentFeeCopyWith<$Res> implements $StudentFeeEventCopyWith<$Res> {
  factory $CreateStudentFeeCopyWith(CreateStudentFee value, $Res Function(CreateStudentFee) _then) = _$CreateStudentFeeCopyWithImpl;
@useResult
$Res call({
 StudentFee studentFee
});


$StudentFeeCopyWith<$Res> get studentFee;

}
/// @nodoc
class _$CreateStudentFeeCopyWithImpl<$Res>
    implements $CreateStudentFeeCopyWith<$Res> {
  _$CreateStudentFeeCopyWithImpl(this._self, this._then);

  final CreateStudentFee _self;
  final $Res Function(CreateStudentFee) _then;

/// Create a copy of StudentFeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? studentFee = null,}) {
  return _then(CreateStudentFee(
null == studentFee ? _self.studentFee : studentFee // ignore: cast_nullable_to_non_nullable
as StudentFee,
  ));
}

/// Create a copy of StudentFeeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentFeeCopyWith<$Res> get studentFee {
  
  return $StudentFeeCopyWith<$Res>(_self.studentFee, (value) {
    return _then(_self.copyWith(studentFee: value));
  });
}
}

/// @nodoc


class DeleteStudentFee implements StudentFeeEvent {
  const DeleteStudentFee(this.id);
  

 final  int id;

/// Create a copy of StudentFeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteStudentFeeCopyWith<DeleteStudentFee> get copyWith => _$DeleteStudentFeeCopyWithImpl<DeleteStudentFee>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteStudentFee&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'StudentFeeEvent.deleteStudentFee(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteStudentFeeCopyWith<$Res> implements $StudentFeeEventCopyWith<$Res> {
  factory $DeleteStudentFeeCopyWith(DeleteStudentFee value, $Res Function(DeleteStudentFee) _then) = _$DeleteStudentFeeCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$DeleteStudentFeeCopyWithImpl<$Res>
    implements $DeleteStudentFeeCopyWith<$Res> {
  _$DeleteStudentFeeCopyWithImpl(this._self, this._then);

  final DeleteStudentFee _self;
  final $Res Function(DeleteStudentFee) _then;

/// Create a copy of StudentFeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteStudentFee(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateStudentFee implements StudentFeeEvent {
  const UpdateStudentFee(this.studentFee);
  

 final  StudentFee studentFee;

/// Create a copy of StudentFeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateStudentFeeCopyWith<UpdateStudentFee> get copyWith => _$UpdateStudentFeeCopyWithImpl<UpdateStudentFee>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateStudentFee&&(identical(other.studentFee, studentFee) || other.studentFee == studentFee));
}


@override
int get hashCode => Object.hash(runtimeType,studentFee);

@override
String toString() {
  return 'StudentFeeEvent.updateStudentFee(studentFee: $studentFee)';
}


}

/// @nodoc
abstract mixin class $UpdateStudentFeeCopyWith<$Res> implements $StudentFeeEventCopyWith<$Res> {
  factory $UpdateStudentFeeCopyWith(UpdateStudentFee value, $Res Function(UpdateStudentFee) _then) = _$UpdateStudentFeeCopyWithImpl;
@useResult
$Res call({
 StudentFee studentFee
});


$StudentFeeCopyWith<$Res> get studentFee;

}
/// @nodoc
class _$UpdateStudentFeeCopyWithImpl<$Res>
    implements $UpdateStudentFeeCopyWith<$Res> {
  _$UpdateStudentFeeCopyWithImpl(this._self, this._then);

  final UpdateStudentFee _self;
  final $Res Function(UpdateStudentFee) _then;

/// Create a copy of StudentFeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? studentFee = null,}) {
  return _then(UpdateStudentFee(
null == studentFee ? _self.studentFee : studentFee // ignore: cast_nullable_to_non_nullable
as StudentFee,
  ));
}

/// Create a copy of StudentFeeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentFeeCopyWith<$Res> get studentFee {
  
  return $StudentFeeCopyWith<$Res>(_self.studentFee, (value) {
    return _then(_self.copyWith(studentFee: value));
  });
}
}

// dart format on
