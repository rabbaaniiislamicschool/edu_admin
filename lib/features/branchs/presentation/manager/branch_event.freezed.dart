// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BranchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BranchEvent()';
}


}

/// @nodoc
class $BranchEventCopyWith<$Res>  {
$BranchEventCopyWith(BranchEvent _, $Res Function(BranchEvent) __);
}


/// @nodoc


class FetchAllBranches implements BranchEvent {
  const FetchAllBranches();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchAllBranches);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BranchEvent.fetchAllBranches()';
}


}




/// @nodoc


class GetBranchById implements BranchEvent {
  const GetBranchById(this.id);
  

 final  int id;

/// Create a copy of BranchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBranchByIdCopyWith<GetBranchById> get copyWith => _$GetBranchByIdCopyWithImpl<GetBranchById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBranchById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'BranchEvent.getBranchById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetBranchByIdCopyWith<$Res> implements $BranchEventCopyWith<$Res> {
  factory $GetBranchByIdCopyWith(GetBranchById value, $Res Function(GetBranchById) _then) = _$GetBranchByIdCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$GetBranchByIdCopyWithImpl<$Res>
    implements $GetBranchByIdCopyWith<$Res> {
  _$GetBranchByIdCopyWithImpl(this._self, this._then);

  final GetBranchById _self;
  final $Res Function(GetBranchById) _then;

/// Create a copy of BranchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetBranchById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CreateBranch implements BranchEvent {
  const CreateBranch(this.branch);
  

 final  Branch branch;

/// Create a copy of BranchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateBranchCopyWith<CreateBranch> get copyWith => _$CreateBranchCopyWithImpl<CreateBranch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateBranch&&(identical(other.branch, branch) || other.branch == branch));
}


@override
int get hashCode => Object.hash(runtimeType,branch);

@override
String toString() {
  return 'BranchEvent.createBranch(branch: $branch)';
}


}

/// @nodoc
abstract mixin class $CreateBranchCopyWith<$Res> implements $BranchEventCopyWith<$Res> {
  factory $CreateBranchCopyWith(CreateBranch value, $Res Function(CreateBranch) _then) = _$CreateBranchCopyWithImpl;
@useResult
$Res call({
 Branch branch
});


$BranchCopyWith<$Res> get branch;

}
/// @nodoc
class _$CreateBranchCopyWithImpl<$Res>
    implements $CreateBranchCopyWith<$Res> {
  _$CreateBranchCopyWithImpl(this._self, this._then);

  final CreateBranch _self;
  final $Res Function(CreateBranch) _then;

/// Create a copy of BranchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? branch = null,}) {
  return _then(CreateBranch(
null == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as Branch,
  ));
}

/// Create a copy of BranchEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchCopyWith<$Res> get branch {
  
  return $BranchCopyWith<$Res>(_self.branch, (value) {
    return _then(_self.copyWith(branch: value));
  });
}
}

/// @nodoc


class CreateBranches implements BranchEvent {
  const CreateBranches(final  List<Branch> branch): _branch = branch;
  

 final  List<Branch> _branch;
 List<Branch> get branch {
  if (_branch is EqualUnmodifiableListView) return _branch;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_branch);
}


/// Create a copy of BranchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateBranchesCopyWith<CreateBranches> get copyWith => _$CreateBranchesCopyWithImpl<CreateBranches>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateBranches&&const DeepCollectionEquality().equals(other._branch, _branch));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_branch));

@override
String toString() {
  return 'BranchEvent.createBranches(branch: $branch)';
}


}

/// @nodoc
abstract mixin class $CreateBranchesCopyWith<$Res> implements $BranchEventCopyWith<$Res> {
  factory $CreateBranchesCopyWith(CreateBranches value, $Res Function(CreateBranches) _then) = _$CreateBranchesCopyWithImpl;
@useResult
$Res call({
 List<Branch> branch
});




}
/// @nodoc
class _$CreateBranchesCopyWithImpl<$Res>
    implements $CreateBranchesCopyWith<$Res> {
  _$CreateBranchesCopyWithImpl(this._self, this._then);

  final CreateBranches _self;
  final $Res Function(CreateBranches) _then;

/// Create a copy of BranchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? branch = null,}) {
  return _then(CreateBranches(
null == branch ? _self._branch : branch // ignore: cast_nullable_to_non_nullable
as List<Branch>,
  ));
}


}

/// @nodoc


class DeleteBranch implements BranchEvent {
  const DeleteBranch(this.id);
  

 final  int id;

/// Create a copy of BranchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteBranchCopyWith<DeleteBranch> get copyWith => _$DeleteBranchCopyWithImpl<DeleteBranch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteBranch&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'BranchEvent.deleteBranch(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteBranchCopyWith<$Res> implements $BranchEventCopyWith<$Res> {
  factory $DeleteBranchCopyWith(DeleteBranch value, $Res Function(DeleteBranch) _then) = _$DeleteBranchCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$DeleteBranchCopyWithImpl<$Res>
    implements $DeleteBranchCopyWith<$Res> {
  _$DeleteBranchCopyWithImpl(this._self, this._then);

  final DeleteBranch _self;
  final $Res Function(DeleteBranch) _then;

/// Create a copy of BranchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteBranch(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateBranch implements BranchEvent {
  const UpdateBranch(this.branch);
  

 final  Branch branch;

/// Create a copy of BranchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateBranchCopyWith<UpdateBranch> get copyWith => _$UpdateBranchCopyWithImpl<UpdateBranch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateBranch&&(identical(other.branch, branch) || other.branch == branch));
}


@override
int get hashCode => Object.hash(runtimeType,branch);

@override
String toString() {
  return 'BranchEvent.updateBranch(branch: $branch)';
}


}

/// @nodoc
abstract mixin class $UpdateBranchCopyWith<$Res> implements $BranchEventCopyWith<$Res> {
  factory $UpdateBranchCopyWith(UpdateBranch value, $Res Function(UpdateBranch) _then) = _$UpdateBranchCopyWithImpl;
@useResult
$Res call({
 Branch branch
});


$BranchCopyWith<$Res> get branch;

}
/// @nodoc
class _$UpdateBranchCopyWithImpl<$Res>
    implements $UpdateBranchCopyWith<$Res> {
  _$UpdateBranchCopyWithImpl(this._self, this._then);

  final UpdateBranch _self;
  final $Res Function(UpdateBranch) _then;

/// Create a copy of BranchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? branch = null,}) {
  return _then(UpdateBranch(
null == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as Branch,
  ));
}

/// Create a copy of BranchEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchCopyWith<$Res> get branch {
  
  return $BranchCopyWith<$Res>(_self.branch, (value) {
    return _then(_self.copyWith(branch: value));
  });
}
}

// dart format on
