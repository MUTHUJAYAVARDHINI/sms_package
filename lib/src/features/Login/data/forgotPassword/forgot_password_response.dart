// To parse this JSON data, do
//
//     final forgotPasswordResponse = forgotPasswordResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'forgot_password_response.freezed.dart';
part 'forgot_password_response.g.dart';

ForgotPasswordResponse forgotPasswordResponseFromJson(String str) => ForgotPasswordResponse.fromJson(json.decode(str));

String forgotPasswordResponseToJson(ForgotPasswordResponse data) => json.encode(data.toJson());

@freezed
class ForgotPasswordResponse with _$ForgotPasswordResponse {
  const factory ForgotPasswordResponse({
    @JsonKey(name: "data")
    Data? data,
  }) = _ForgotPasswordResponse;

  factory ForgotPasswordResponse.fromJson(Map<String, dynamic> json) => _$ForgotPasswordResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "countryCode")
    dynamic countryCode,
    @JsonKey(name: "entityCode")
    dynamic entityCode,
    @JsonKey(name: "id")
    dynamic id,
    @JsonKey(name: "userId")
    dynamic userId,
    @JsonKey(name: "userType")
    dynamic userType,
    @JsonKey(name: "userDesignation")
    dynamic userDesignation,
    @JsonKey(name: "firstName")
    dynamic firstName,
    @JsonKey(name: "secondName")
    dynamic secondName,
    @JsonKey(name: "lastName")
    dynamic lastName,
    @JsonKey(name: "preferredName")
    dynamic preferredName,
    @JsonKey(name: "mobileNo")
    dynamic mobileNo,
    @JsonKey(name: "altMobileNo")
    dynamic altMobileNo,
    @JsonKey(name: "createdOn")
    dynamic createdOn,
    @JsonKey(name: "expiryDate")
    dynamic expiryDate,
    @JsonKey(name: "userLanguage")
    dynamic userLanguage,
    @JsonKey(name: "defaultBranchCode")
    dynamic defaultBranchCode,
    @JsonKey(name: "defaultDepartmentCode")
    dynamic defaultDepartmentCode,
    @JsonKey(name: "defaultTenantCode")
    dynamic defaultTenantCode,
    @JsonKey(name: "mailId")
    String? mailId,
    @JsonKey(name: "userPassword")
    dynamic userPassword,
    @JsonKey(name: "createdBy")
    dynamic createdBy,
    @JsonKey(name: "status")
    dynamic status,
    @JsonKey(name: "otp")
    dynamic otp,
    @JsonKey(name: "entityType")
    dynamic entityType,
    @JsonKey(name: "ErrorCodeDTO")
    List<ErrorCodeDto>? errorCodeDto,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class ErrorCodeDto with _$ErrorCodeDto {
  const factory ErrorCodeDto({
    @JsonKey(name: "errorCode")
    String? errorCode,
    @JsonKey(name: "errorDesc")
    String? errorDesc,
    @JsonKey(name: "langCode")
    String? langCode,
    @JsonKey(name: "errorType")
    String? errorType,
  }) = _ErrorCodeDto;

  factory ErrorCodeDto.fromJson(Map<String, dynamic> json) => _$ErrorCodeDtoFromJson(json);
}
