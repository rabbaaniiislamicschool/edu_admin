// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BranchState {

 BranchStatus get status; String? get errorMessage; String? get successMessage; List<Branch>? get branches; Branch? get branch;
/// Create a copy of BranchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchStateCopyWith<BranchState> get copyWith => _$BranchStateCopyWithImpl<BranchState>(this as BranchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other.branches, branches)&&(identical(other.branch, branch) || other.branch == branch));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(branches),branch);

@override
String toString() {
  return 'BranchState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, branches: $branches, branch: $branch)';
}


}

/// @nodoc
abstract mixin class $BranchStateCopyWith<$Res>  {
  factory $BranchStateCopyWith(BranchState value, $Res Function(BranchState) _then) = _$BranchStateCopyWithImpl;
@useResult
$Res call({
 BranchStatus status, String? errorMessage, String? successMessage, List<Branch>? branches, Branch? branch
});


$BranchCopyWith<$Res>? get branch;

}
/// @nodoc
class _$BranchStateCopyWithImpl<$Res>
    implements $BranchStateCopyWith<$Res> {
  _$BranchStateCopyWithImpl(this._self, this._then);

  final BranchState _self;
  final $Res Function(BranchState) _then;

/// Create a copy of BranchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? branches = freezed,Object? branch = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BranchStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,branches: freezed == branches ? _self.branches : branches // ignore: cast_nullable_to_non_nullable
as List<Branch>?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as Branch?,
  ));
}
/// Create a copy of BranchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $BranchCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}
}


/// @nodoc


class _BranchState implements BranchState {
  const _BranchState({this.status = BranchStatus.initial, this.errorMessage, this.successMessage, final  List<Branch>? branches, this.branch}): _branches = branches;
  

@override@JsonKey() final  BranchStatus status;
@override final  String? errorMessage;
@override final  String? successMessage;
 final  List<Branch>? _branches;
@override List<Branch>? get branches {
  final value = _branches;
  if (value == null) return null;
  if (_branches is EqualUnmodifiableListView) return _branches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Branch? branch;

/// Create a copy of BranchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchStateCopyWith<_BranchState> get copyWith => __$BranchStateCopyWithImpl<_BranchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other._branches, _branches)&&(identical(other.branch, branch) || other.branch == branch));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(_branches),branch);

@override
String toString() {
  return 'BranchState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, branches: $branches, branch: $branch)';
}


}

/// @nodoc
abstract mixin class _$BranchStateCopyWith<$Res> implements $BranchStateCopyWith<$Res> {
  factory _$BranchStateCopyWith(_BranchState value, $Res Function(_BranchState) _then) = __$BranchStateCopyWithImpl;
@override @useResult
$Res call({
 BranchStatus status, String? errorMessage, String? successMessage, List<Branch>? branches, Branch? branch
});


@override $BranchCopyWith<$Res>? get branch;

}
/// @nodoc
class __$BranchStateCopyWithImpl<$Res>
    implements _$BranchStateCopyWith<$Res> {
  __$BranchStateCopyWithImpl(this._self, this._then);

  final _BranchState _self;
  final $Res Function(_BranchState) _then;

/// Create a copy of BranchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? branches = freezed,Object? branch = freezed,}) {
  return _then(_BranchState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BranchStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,branches: freezed == branches ? _self._branches : branches // ignore: cast_nullable_to_non_nullable
as List<Branch>?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as Branch?,
  ));
}

/// Create a copy of BranchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $BranchCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}
}

// dart format on
