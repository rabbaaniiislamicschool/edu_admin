import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/class.dart';

part 'class_event.freezed.dart';

@freezed
abstract class ClassEvent with _$ClassEvent {
  const factory ClassEvent.fetchClass() = FetchClass;
  const factory ClassEvent.getClassById(int id) = GetClassById;
  const factory ClassEvent.createClass(Class school) = CreateClass;
  const factory ClassEvent.deleteClass(int id) = DeleteClass;
  const factory ClassEvent.updateClass(Class school) = UpdateClass;
}