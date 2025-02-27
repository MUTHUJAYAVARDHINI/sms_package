// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empowerment_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmpowermentDataImpl _$$EmpowermentDataImplFromJson(
        Map<String, dynamic> json) =>
    _$EmpowermentDataImpl(
      id: json['id'] as String,
      is_active: json['is_active'] as bool?,
      course_name: json['course_name'] as String,
      course_image_url: json['course_image_url'] as String,
      course_description: json['course_description'] as String,
      category_id: json['category_id'] as String,
      trainer_id: json['trainer_id'] as String,
    );

Map<String, dynamic> _$$EmpowermentDataImplToJson(
        _$EmpowermentDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_active': instance.is_active,
      'course_name': instance.course_name,
      'course_image_url': instance.course_image_url,
      'course_description': instance.course_description,
      'category_id': instance.category_id,
      'trainer_id': instance.trainer_id,
    };
