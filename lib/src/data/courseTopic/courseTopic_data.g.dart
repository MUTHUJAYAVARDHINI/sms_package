// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courseTopic_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseTopicDataImpl _$$CourseTopicDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseTopicDataImpl(
      id: json['id'] as String,
      is_active: json['is_active'] as bool?,
      is_deleted: json['is_deleted'] as bool?,
      category_name: json['course_name'] as String,
      category_image_url: json['course_image_url'] as String,
      category_description: json['course_description'] as String,
      category_id: json['category_id'] as String,
      trainer_id: json['trainer_id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      deletedAt: json['deletedAt'] as String?,
    );

Map<String, dynamic> _$$CourseTopicDataImplToJson(
        _$CourseTopicDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_active': instance.is_active,
      'is_deleted': instance.is_deleted,
      'course_name': instance.category_name,
      'course_image_url': instance.category_image_url,
      'course_description': instance.category_description,
      'category_id': instance.category_id,
      'trainer_id': instance.trainer_id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
    };
