// To parse this JSON data, do
//
//     final domainData = domainDataFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'domain_data.freezed.dart';
part 'domain_data.g.dart';

DomainData domainDataFromJson(String str) => DomainData.fromJson(json.decode(str));

String domainDataToJson(DomainData data) => json.encode(data.toJson());

@freezed
class DomainData with _$DomainData {
  const factory DomainData({
    @JsonKey(name: "countryCode")
    String? countryCode,
    @JsonKey(name: "entityCode")
    String? entityCode,
    @JsonKey(name: "tenantCode")
    String? tenantCode,
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "entityType")
    String? entityType,
    @JsonKey(name: "entityName")
    String? entityName,
    @JsonKey(name: "entityAddress1")
    String? entityAddress1,
    @JsonKey(name: "entityAddress2")
    String? entityAddress2,
    @JsonKey(name: "entityAddress3")
    String? entityAddress3,
    @JsonKey(name: "entityState")
    String? entityState,
    @JsonKey(name: "entityPinZipCode")
    String? entityPinZipCode,
    @JsonKey(name: "entityDisplayName")
    String? entityDisplayName,
    @JsonKey(name: "logo")
    String? logo,
    @JsonKey(name: "banner")
    String? banner,
    @JsonKey(name: "cssTheme")
    String? cssTheme,
    @JsonKey(name: "documentPurgingDays")
    int? documentPurgingDays,
    @JsonKey(name: "rejectedDocumentPurgeDays")
    int? rejectedDocumentPurgeDays,
    @JsonKey(name: "customerNotificationReminderDays")
    int? customerNotificationReminderDays,
    @JsonKey(name: "transactionExpiryDaysFromCreation")
    int? transactionExpiryDaysFromCreation,
    @JsonKey(name: "noOfLevelOfDocVerification")
    int? noOfLevelOfDocVerification,
    @JsonKey(name: "utcTimeZone")
    String? utcTimeZone,
    @JsonKey(name: "userPasswordEncryptionSymmetricKey")
    String? userPasswordEncryptionSymmetricKey,
    @JsonKey(name: "ssoEnabled")
    String? ssoEnabled,
    @JsonKey(name: "smsNotificationEnabled")
    String? smsNotificationEnabled,
    @JsonKey(name: "emailNotificationEnabled")
    String? emailNotificationEnabled,
    @JsonKey(name: "supportMailIdGroup")
    String? supportMailIdGroup,
    @JsonKey(name: "recordPurgeRequired")
    String? recordPurgeRequired,
    @JsonKey(name: "recordPurgeDays")
    String? recordPurgeDays,
    @JsonKey(name: "refNoPrefixChar")
    String? refNoPrefixChar,
    @JsonKey(name: "remarksMessage")
    String? remarksMessage,
    @JsonKey(name: "startDate")
    int? startDate,
    @JsonKey(name: "expiryDate")
    int? expiryDate,
    @JsonKey(name: "status")
    String? status,
    @JsonKey(name: "createdOn")
    int? createdOn,
    @JsonKey(name: "createdBy")
    String? createdBy,
    @JsonKey(name: "documentStorageLocation")
    dynamic documentStorageLocation,
    @JsonKey(name: "maxFileSizeAllowedForUpload")
    String? maxFileSizeAllowedForUpload,
    @JsonKey(name: "ErrorCodeDTO")
    dynamic errorCodeDto,
  }) = _DomainData;

  factory DomainData.fromJson(Map<String, dynamic> json) => _$DomainDataFromJson(json);
}
