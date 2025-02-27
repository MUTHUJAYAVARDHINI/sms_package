// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForgotPasswordResponseImpl _$$ForgotPasswordResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgotPasswordResponseImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForgotPasswordResponseImplToJson(
        _$ForgotPasswordResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      countryCode: json['countryCode'],
      entityCode: json['entityCode'],
      id: json['id'],
      userId: json['userId'],
      userType: json['userType'],
      userDesignation: json['userDesignation'],
      firstName: json['firstName'],
      secondName: json['secondName'],
      lastName: json['lastName'],
      preferredName: json['preferredName'],
      mobileNo: json['mobileNo'],
      altMobileNo: json['altMobileNo'],
      createdOn: json['createdOn'],
      expiryDate: json['expiryDate'],
      userLanguage: json['userLanguage'],
      defaultBranchCode: json['defaultBranchCode'],
      defaultDepartmentCode: json['defaultDepartmentCode'],
      defaultTenantCode: json['defaultTenantCode'],
      mailId: json['mailId'] as String?,
      userPassword: json['userPassword'],
      createdBy: json['createdBy'],
      status: json['status'],
      otp: json['otp'],
      entityType: json['entityType'],
      errorCodeDto: (json['ErrorCodeDTO'] as List<dynamic>?)
          ?.map((e) => ErrorCodeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'countryCode': instance.countryCode,
      'entityCode': instance.entityCode,
      'id': instance.id,
      'userId': instance.userId,
      'userType': instance.userType,
      'userDesignation': instance.userDesignation,
      'firstName': instance.firstName,
      'secondName': instance.secondName,
      'lastName': instance.lastName,
      'preferredName': instance.preferredName,
      'mobileNo': instance.mobileNo,
      'altMobileNo': instance.altMobileNo,
      'createdOn': instance.createdOn,
      'expiryDate': instance.expiryDate,
      'userLanguage': instance.userLanguage,
      'defaultBranchCode': instance.defaultBranchCode,
      'defaultDepartmentCode': instance.defaultDepartmentCode,
      'defaultTenantCode': instance.defaultTenantCode,
      'mailId': instance.mailId,
      'userPassword': instance.userPassword,
      'createdBy': instance.createdBy,
      'status': instance.status,
      'otp': instance.otp,
      'entityType': instance.entityType,
      'ErrorCodeDTO': instance.errorCodeDto,
    };

_$ErrorCodeDtoImpl _$$ErrorCodeDtoImplFromJson(Map<String, dynamic> json) =>
    _$ErrorCodeDtoImpl(
      errorCode: json['errorCode'] as String?,
      errorDesc: json['errorDesc'] as String?,
      langCode: json['langCode'] as String?,
      errorType: json['errorType'] as String?,
    );

Map<String, dynamic> _$$ErrorCodeDtoImplToJson(_$ErrorCodeDtoImpl instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorDesc': instance.errorDesc,
      'langCode': instance.langCode,
      'errorType': instance.errorType,
    };
