import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/class.dart';

part 'class_model.freezed.dart';
part 'class_model.g.dart';

@freezed
abstract class ClassModel with _$ClassModel {
  const factory ClassModel({
    @JsonKey(name: 'class_id', includeToJson: false) required int classId,
    @JsonKey(name: 'school_id') required int schoolId,
    @JsonKey(name: 'class_name') required String className,
    String? description,
    @JsonKey(name: 'created_at', includeToJson: false) required String createdAt,
    @JsonKey(name: 'room_id') int? roomId,
  }) = _ClassModel;

  factory ClassModel.fromJson(Map<String, dynamic> json) =>
      _$ClassModelFromJson(json);
}

extension ClassModelX on ClassModel {
  Class toEntity() => Class(
    classId: classId,
    schoolId: schoolId,
    className: className,
    description: description,
    createdAt: createdAt,
    roomId: roomId,
  );
}