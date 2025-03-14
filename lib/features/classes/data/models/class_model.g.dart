// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClassModel _$ClassModelFromJson(Map<String, dynamic> json) => _ClassModel(
  classId: (json['class_id'] as num).toInt(),
  schoolId: (json['school_id'] as num).toInt(),
  className: json['class_name'] as String,
  description: json['description'] as String?,
  createdAt: json['created_at'] as String,
  roomId: (json['room_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$ClassModelToJson(_ClassModel instance) =>
    <String, dynamic>{
      'school_id': instance.schoolId,
      'class_name': instance.className,
      'description': instance.description,
      'room_id': instance.roomId,
    };
