// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'foundation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FoundationState implements DiagnosticableTreeMixin {

 FoundationStatus get status; String? get errorMessage; List<Foundation>? get foundations; Foundation? get foundation;
/// Create a copy of FoundationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoundationStateCopyWith<FoundationState> get copyWith => _$FoundationStateCopyWithImpl<FoundationState>(this as FoundationState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FoundationState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('errorMessage', errorMessage))..add(DiagnosticsProperty('foundations', foundations))..add(DiagnosticsProperty('foundation', foundation));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoundationState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.foundations, foundations)&&(identical(other.foundation, foundation) || other.foundation == foundation));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,const DeepCollectionEquality().hash(foundations),foundation);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FoundationState(status: $status, errorMessage: $errorMessage, foundations: $foundations, foundation: $foundation)';
}


}

/// @nodoc
abstract mixin class $FoundationStateCopyWith<$Res>  {
  factory $FoundationStateCopyWith(FoundationState value, $Res Function(FoundationState) _then) = _$FoundationStateCopyWithImpl;
@useResult
$Res call({
 FoundationStatus status, String? errorMessage, List<Foundation>? foundations, Foundation? foundation
});


$FoundationCopyWith<$Res>? get foundation;

}
/// @nodoc
class _$FoundationStateCopyWithImpl<$Res>
    implements $FoundationStateCopyWith<$Res> {
  _$FoundationStateCopyWithImpl(this._self, this._then);

  final FoundationState _self;
  final $Res Function(FoundationState) _then;

/// Create a copy of FoundationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = freezed,Object? foundations = freezed,Object? foundation = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FoundationStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,foundations: freezed == foundations ? _self.foundations : foundations // ignore: cast_nullable_to_non_nullable
as List<Foundation>?,foundation: freezed == foundation ? _self.foundation : foundation // ignore: cast_nullable_to_non_nullable
as Foundation?,
  ));
}
/// Create a copy of FoundationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoundationCopyWith<$Res>? get foundation {
    if (_self.foundation == null) {
    return null;
  }

  return $FoundationCopyWith<$Res>(_self.foundation!, (value) {
    return _then(_self.copyWith(foundation: value));
  });
}
}


/// @nodoc


class _FoundationState with DiagnosticableTreeMixin implements FoundationState {
  const _FoundationState({this.status = FoundationStatus.initial, this.errorMessage, final  List<Foundation>? foundations, this.foundation}): _foundations = foundations;
  

@override@JsonKey() final  FoundationStatus status;
@override final  String? errorMessage;
 final  List<Foundation>? _foundations;
@override List<Foundation>? get foundations {
  final value = _foundations;
  if (value == null) return null;
  if (_foundations is EqualUnmodifiableListView) return _foundations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Foundation? foundation;

/// Create a copy of FoundationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoundationStateCopyWith<_FoundationState> get copyWith => __$FoundationStateCopyWithImpl<_FoundationState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FoundationState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('errorMessage', errorMessage))..add(DiagnosticsProperty('foundations', foundations))..add(DiagnosticsProperty('foundation', foundation));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoundationState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._foundations, _foundations)&&(identical(other.foundation, foundation) || other.foundation == foundation));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,const DeepCollectionEquality().hash(_foundations),foundation);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FoundationState(status: $status, errorMessage: $errorMessage, foundations: $foundations, foundation: $foundation)';
}


}

/// @nodoc
abstract mixin class _$FoundationStateCopyWith<$Res> implements $FoundationStateCopyWith<$Res> {
  factory _$FoundationStateCopyWith(_FoundationState value, $Res Function(_FoundationState) _then) = __$FoundationStateCopyWithImpl;
@override @useResult
$Res call({
 FoundationStatus status, String? errorMessage, List<Foundation>? foundations, Foundation? foundation
});


@override $FoundationCopyWith<$Res>? get foundation;

}
/// @nodoc
class __$FoundationStateCopyWithImpl<$Res>
    implements _$FoundationStateCopyWith<$Res> {
  __$FoundationStateCopyWithImpl(this._self, this._then);

  final _FoundationState _self;
  final $Res Function(_FoundationState) _then;

/// Create a copy of FoundationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = freezed,Object? foundations = freezed,Object? foundation = freezed,}) {
  return _then(_FoundationState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FoundationStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,foundations: freezed == foundations ? _self._foundations : foundations // ignore: cast_nullable_to_non_nullable
as List<Foundation>?,foundation: freezed == foundation ? _self.foundation : foundation // ignore: cast_nullable_to_non_nullable
as Foundation?,
  ));
}

/// Create a copy of FoundationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoundationCopyWith<$Res>? get foundation {
    if (_self.foundation == null) {
    return null;
  }

  return $FoundationCopyWith<$Res>(_self.foundation!, (value) {
    return _then(_self.copyWith(foundation: value));
  });
}
}

// dart format on
