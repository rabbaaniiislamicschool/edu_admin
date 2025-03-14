// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClassState {

 ClassStatus get status; String? get errorMessage; String? get successMessage; List<Class>? get classes; Class? get classSelected;
/// Create a copy of ClassState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassStateCopyWith<ClassState> get copyWith => _$ClassStateCopyWithImpl<ClassState>(this as ClassState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other.classes, classes)&&(identical(other.classSelected, classSelected) || other.classSelected == classSelected));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(classes),classSelected);

@override
String toString() {
  return 'ClassState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, classes: $classes, classSelected: $classSelected)';
}


}

/// @nodoc
abstract mixin class $ClassStateCopyWith<$Res>  {
  factory $ClassStateCopyWith(ClassState value, $Res Function(ClassState) _then) = _$ClassStateCopyWithImpl;
@useResult
$Res call({
 ClassStatus status, String? errorMessage, String? successMessage, List<Class>? classes, Class? classSelected
});


$ClassCopyWith<$Res>? get classSelected;

}
/// @nodoc
class _$ClassStateCopyWithImpl<$Res>
    implements $ClassStateCopyWith<$Res> {
  _$ClassStateCopyWithImpl(this._self, this._then);

  final ClassState _self;
  final $Res Function(ClassState) _then;

/// Create a copy of ClassState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? classes = freezed,Object? classSelected = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClassStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,classes: freezed == classes ? _self.classes : classes // ignore: cast_nullable_to_non_nullable
as List<Class>?,classSelected: freezed == classSelected ? _self.classSelected : classSelected // ignore: cast_nullable_to_non_nullable
as Class?,
  ));
}
/// Create a copy of ClassState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassCopyWith<$Res>? get classSelected {
    if (_self.classSelected == null) {
    return null;
  }

  return $ClassCopyWith<$Res>(_self.classSelected!, (value) {
    return _then(_self.copyWith(classSelected: value));
  });
}
}


/// @nodoc


class _ClassState implements ClassState {
  const _ClassState({this.status = ClassStatus.initial, this.errorMessage, this.successMessage, final  List<Class>? classes, this.classSelected}): _classes = classes;
  

@override@JsonKey() final  ClassStatus status;
@override final  String? errorMessage;
@override final  String? successMessage;
 final  List<Class>? _classes;
@override List<Class>? get classes {
  final value = _classes;
  if (value == null) return null;
  if (_classes is EqualUnmodifiableListView) return _classes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Class? classSelected;

/// Create a copy of ClassState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassStateCopyWith<_ClassState> get copyWith => __$ClassStateCopyWithImpl<_ClassState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&const DeepCollectionEquality().equals(other._classes, _classes)&&(identical(other.classSelected, classSelected) || other.classSelected == classSelected));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,successMessage,const DeepCollectionEquality().hash(_classes),classSelected);

@override
String toString() {
  return 'ClassState(status: $status, errorMessage: $errorMessage, successMessage: $successMessage, classes: $classes, classSelected: $classSelected)';
}


}

/// @nodoc
abstract mixin class _$ClassStateCopyWith<$Res> implements $ClassStateCopyWith<$Res> {
  factory _$ClassStateCopyWith(_ClassState value, $Res Function(_ClassState) _then) = __$ClassStateCopyWithImpl;
@override @useResult
$Res call({
 ClassStatus status, String? errorMessage, String? successMessage, List<Class>? classes, Class? classSelected
});


@override $ClassCopyWith<$Res>? get classSelected;

}
/// @nodoc
class __$ClassStateCopyWithImpl<$Res>
    implements _$ClassStateCopyWith<$Res> {
  __$ClassStateCopyWithImpl(this._self, this._then);

  final _ClassState _self;
  final $Res Function(_ClassState) _then;

/// Create a copy of ClassState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? classes = freezed,Object? classSelected = freezed,}) {
  return _then(_ClassState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClassStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,classes: freezed == classes ? _self._classes : classes // ignore: cast_nullable_to_non_nullable
as List<Class>?,classSelected: freezed == classSelected ? _self.classSelected : classSelected // ignore: cast_nullable_to_non_nullable
as Class?,
  ));
}

/// Create a copy of ClassState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassCopyWith<$Res>? get classSelected {
    if (_self.classSelected == null) {
    return null;
  }

  return $ClassCopyWith<$Res>(_self.classSelected!, (value) {
    return _then(_self.copyWith(classSelected: value));
  });
}
}

// dart format on
