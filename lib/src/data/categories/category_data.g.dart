// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesDataImpl _$$CategoriesDataImplFromJson(Map<String, dynamic> json) =>
    _$CategoriesDataImpl(
      id: json['id'] as String,
      is_active: json['is_active'] as bool?,
      category_name: json['category_name'] as String,
      category_image_url: json['category_image_url'] as String,
      category_description: json['category_description'] as String,
    );

Map<String, dynamic> _$$CategoriesDataImplToJson(
        _$CategoriesDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_active': instance.is_active,
      'category_name': instance.category_name,
      'category_image_url': instance.category_image_url,
      'category_description': instance.category_description,
    };
