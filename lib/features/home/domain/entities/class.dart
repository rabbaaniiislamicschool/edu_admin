import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'class.freezed.dart';

@freezed
class Class with _$Class {
  const factory Class({
    required int classId,
    required int schoolId,
    required String className,
    String? description,
    required String createdAt,
    int? roomId,
  }) = _Class;
}