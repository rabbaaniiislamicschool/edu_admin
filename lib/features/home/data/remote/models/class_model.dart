import 'package:edu_admin/features/home/domain/entities/class.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_model.freezed.dart';

part 'class_model.g.dart';

@freezed
class ClassModel with _$ClassModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ClassModel({
    required int schoolId,
    required int classId,
    required String className,
    required String createdAt,
    String? description,
    int? roomId,
  }) = _ClassModel;

  factory ClassModel.fromJson(Map<String, dynamic> json) =>
      _$ClassModelFromJson(json);
}

extension ClassModelX on ClassModel {
  Class toEntity() => Class(
        classId: classId,
        schoolId: schoolId,
        className: className,
        createdAt: createdAt,
        description: description,
        roomId: roomId,
      );
}
