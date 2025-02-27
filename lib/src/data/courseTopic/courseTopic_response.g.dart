// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courseTopic_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseTopicResponseImpl _$$CourseTopicResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseTopicResponseImpl(
      code: (json['code'] as num).toInt(),
      status: json['status'] as bool,
      message: json['message'] as String,
      data: CourseTopicData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CourseTopicResponseImplToJson(
        _$CourseTopicResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
