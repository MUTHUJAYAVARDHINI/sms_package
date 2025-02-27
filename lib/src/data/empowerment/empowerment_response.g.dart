// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empowerment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmpowermentResponseImpl _$$EmpowermentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EmpowermentResponseImpl(
      code: (json['code'] as num).toInt(),
      status: json['status'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => EmpowermentData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EmpowermentResponseImplToJson(
        _$EmpowermentResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
