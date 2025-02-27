// To parse this JSON data, do
//
//     final userLoginResponse = userLoginResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_login_response.freezed.dart';
part 'user_login_response.g.dart';

UserLoginResponse userLoginResponseFromJson(String str) => UserLoginResponse.fromJson(json.decode(str));

String userLoginResponseToJson(UserLoginResponse data) => json.encode(data.toJson());

@freezed
class UserLoginResponse with _$UserLoginResponse {
  const factory UserLoginResponse({
    @JsonKey(name: "data")
    UserLoginData? data,
  }) = _UserLoginResponse;

  factory UserLoginResponse.fromJson(Map<String, dynamic> json) => _$UserLoginResponseFromJson(json);
}

@freezed
class UserLoginData with _$UserLoginData {
  const factory UserLoginData({
    @JsonKey(name: "countryCode")
    String? countryCode,
    @JsonKey(name: "entityCode")
    String? entityCode,
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "userId")
    String? userId,
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
    String? defaultTenantCode,
    @JsonKey(name: "mailId")
    String? mailId,
    @JsonKey(name: "userPassword")
    String? userPassword,
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
  }) = _UserLoginData;

  factory UserLoginData.fromJson(Map<String, dynamic> json) => _$UserLoginDataFromJson(json);
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
