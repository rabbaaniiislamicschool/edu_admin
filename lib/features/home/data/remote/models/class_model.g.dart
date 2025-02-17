// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassModelImpl _$$ClassModelImplFromJson(Map<String, dynamic> json) =>
    _$ClassModelImpl(
      schoolId: (json['school_id'] as num).toInt(),
      classId: (json['class_id'] as num).toInt(),
      className: json['class_name'] as String,
      createdAt: json['created_at'] as String,
      description: json['description'] as String?,
      roomId: (json['room_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ClassModelImplToJson(_$ClassModelImpl instance) =>
    <String, dynamic>{
      'school_id': instance.schoolId,
      'class_id': instance.classId,
      'class_name': instance.className,
      'created_at': instance.createdAt,
      'description': instance.description,
      'room_id': instance.roomId,
    };
