import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/class_model.dart';

part 'class.freezed.dart';
part 'class.g.dart';

@freezed
abstract class Class with _$Class {
  factory Class({
    required int classId,
    required int schoolId,
    required String className,
    String? description,
    required String createdAt,
    int? roomId,
  }) = _Class;

  factory Class.fromJson(Map<String, dynamic> json) =>
      _$ClassFromJson(json);
}

extension ClassX on Class {
  ClassModel toModel() => ClassModel(
    classId: classId,
    schoolId: schoolId,
    className: className,
    description: description,
    createdAt: createdAt,
    roomId: roomId,
  );
}