// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DomainDataImpl _$$DomainDataImplFromJson(Map<String, dynamic> json) =>
    _$DomainDataImpl(
      countryCode: json['countryCode'] as String?,
      entityCode: json['entityCode'] as String?,
      tenantCode: json['tenantCode'] as String?,
      id: (json['id'] as num?)?.toInt(),
      entityType: json['entityType'] as String?,
      entityName: json['entityName'] as String?,
      entityAddress1: json['entityAddress1'] as String?,
      entityAddress2: json['entityAddress2'] as String?,
      entityAddress3: json['entityAddress3'] as String?,
      entityState: json['entityState'] as String?,
      entityPinZipCode: json['entityPinZipCode'] as String?,
      entityDisplayName: json['entityDisplayName'] as String?,
      logo: json['logo'] as String?,
      banner: json['banner'] as String?,
      cssTheme: json['cssTheme'] as String?,
      documentPurgingDays: (json['documentPurgingDays'] as num?)?.toInt(),
      rejectedDocumentPurgeDays:
          (json['rejectedDocumentPurgeDays'] as num?)?.toInt(),
      customerNotificationReminderDays:
          (json['customerNotificationReminderDays'] as num?)?.toInt(),
      transactionExpiryDaysFromCreation:
          (json['transactionExpiryDaysFromCreation'] as num?)?.toInt(),
      noOfLevelOfDocVerification:
          (json['noOfLevelOfDocVerification'] as num?)?.toInt(),
      utcTimeZone: json['utcTimeZone'] as String?,
      userPasswordEncryptionSymmetricKey:
          json['userPasswordEncryptionSymmetricKey'] as String?,
      ssoEnabled: json['ssoEnabled'] as String?,
      smsNotificationEnabled: json['smsNotificationEnabled'] as String?,
      emailNotificationEnabled: json['emailNotificationEnabled'] as String?,
      supportMailIdGroup: json['supportMailIdGroup'] as String?,
      recordPurgeRequired: json['recordPurgeRequired'] as String?,
      recordPurgeDays: json['recordPurgeDays'] as String?,
      refNoPrefixChar: json['refNoPrefixChar'] as String?,
      remarksMessage: json['remarksMessage'] as String?,
      startDate: (json['startDate'] as num?)?.toInt(),
      expiryDate: (json['expiryDate'] as num?)?.toInt(),
      status: json['status'] as String?,
      createdOn: (json['createdOn'] as num?)?.toInt(),
      createdBy: json['createdBy'] as String?,
      documentStorageLocation: json['documentStorageLocation'],
      maxFileSizeAllowedForUpload:
          json['maxFileSizeAllowedForUpload'] as String?,
      errorCodeDto: json['ErrorCodeDTO'],
    );

Map<String, dynamic> _$$DomainDataImplToJson(_$DomainDataImpl instance) =>
    <String, dynamic>{
      'countryCode': instance.countryCode,
      'entityCode': instance.entityCode,
      'tenantCode': instance.tenantCode,
      'id': instance.id,
      'entityType': instance.entityType,
      'entityName': instance.entityName,
      'entityAddress1': instance.entityAddress1,
      'entityAddress2': instance.entityAddress2,
      'entityAddress3': instance.entityAddress3,
      'entityState': instance.entityState,
      'entityPinZipCode': instance.entityPinZipCode,
      'entityDisplayName': instance.entityDisplayName,
      'logo': instance.logo,
      'banner': instance.banner,
      'cssTheme': instance.cssTheme,
      'documentPurgingDays': instance.documentPurgingDays,
      'rejectedDocumentPurgeDays': instance.rejectedDocumentPurgeDays,
      'customerNotificationReminderDays':
          instance.customerNotificationReminderDays,
      'transactionExpiryDaysFromCreation':
          instance.transactionExpiryDaysFromCreation,
      'noOfLevelOfDocVerification': instance.noOfLevelOfDocVerification,
      'utcTimeZone': instance.utcTimeZone,
      'userPasswordEncryptionSymmetricKey':
          instance.userPasswordEncryptionSymmetricKey,
      'ssoEnabled': instance.ssoEnabled,
      'smsNotificationEnabled': instance.smsNotificationEnabled,
      'emailNotificationEnabled': instance.emailNotificationEnabled,
      'supportMailIdGroup': instance.supportMailIdGroup,
      'recordPurgeRequired': instance.recordPurgeRequired,
      'recordPurgeDays': instance.recordPurgeDays,
      'refNoPrefixChar': instance.refNoPrefixChar,
      'remarksMessage': instance.remarksMessage,
      'startDate': instance.startDate,
      'expiryDate': instance.expiryDate,
      'status': instance.status,
      'createdOn': instance.createdOn,
      'createdBy': instance.createdBy,
      'documentStorageLocation': instance.documentStorageLocation,
      'maxFileSizeAllowedForUpload': instance.maxFileSizeAllowedForUpload,
      'ErrorCodeDTO': instance.errorCodeDto,
    };
