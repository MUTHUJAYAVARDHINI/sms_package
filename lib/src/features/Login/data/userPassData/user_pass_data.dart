import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';


class UserPassData {
  final String mailId;
  final String userId;
  final String userPassword;
  final String userType;
  final String firstName;
  final String countryCode;
  final String langCode;
  final String entityCode;
  final String entityType;
  final int id;
  final int mobileNo;
  final int altMobileNo;
  final int createdOn;
  final int expiryDate;
  final String userDesignation;
  final String secondName;
  final String lastName;
  final String preferredName;
  final String userLanguage;
  final String defaultBranchCode;
  final String defaultDepartmentCode;
  final String defaultTenantCode;
  final String createdBy;
  final String status;

  UserPassData({
    this.mailId = "",
    this.userId = "",
    this.userPassword = "",
    this.userType = "B",
    this.firstName = "",
    this.countryCode = "IN",
    this.langCode = "ENG",
    this.entityCode = "",
    this.entityType = "",
    this.id = 0,
    this.mobileNo = 0,
    this.altMobileNo = 0,
    this.createdOn = 0,
    this.expiryDate = 0,
    this.userDesignation = "",
    this.secondName = "",
    this.lastName = "",
    this.preferredName = "",
    this.userLanguage = "",
    this.defaultBranchCode = "",
    this.defaultDepartmentCode = "",
    this.defaultTenantCode = "",
    this.createdBy = "",
    this.status = "",
  });

  /// **CopyWith Method**
  /// Creates a new instance with modified fields while keeping other fields unchanged
  UserPassData copyWith({
    String? mailId,
    String? userId,
    String? userPassword,
    String? userType,
    String? firstName,
    String? countryCode,
    String? langCode,
    String? entityCode,
    String? entityType,
    int? id,
    int? mobileNo,
    int? altMobileNo,
    int? createdOn,
    int? expiryDate,
    String? userDesignation,
    String? secondName,
    String? lastName,
    String? preferredName,
    String? userLanguage,
    String? defaultBranchCode,
    String? defaultDepartmentCode,
    String? defaultTenantCode,
    String? createdBy,
    String? status,
  }) {
    return UserPassData(
      mailId: mailId ?? this.mailId,
      userId: userId ?? this.userId,
      userPassword: userPassword ?? this.userPassword,
      userType: userType ?? this.userType,
      firstName: firstName ?? this.firstName,
      countryCode: countryCode ?? this.countryCode,
      langCode: langCode ?? this.langCode,
      entityCode: entityCode ?? this.entityCode,
      entityType: entityType ?? this.entityType,
      id: id ?? this.id,
      mobileNo: mobileNo ?? this.mobileNo,
      altMobileNo: altMobileNo ?? this.altMobileNo,
      createdOn: createdOn ?? this.createdOn,
      expiryDate: expiryDate ?? this.expiryDate,
      userDesignation: userDesignation ?? this.userDesignation,
      secondName: secondName ?? this.secondName,
      lastName: lastName ?? this.lastName,
      preferredName: preferredName ?? this.preferredName,
      userLanguage: userLanguage ?? this.userLanguage,
      defaultBranchCode: defaultBranchCode ?? this.defaultBranchCode,
      defaultDepartmentCode: defaultDepartmentCode ?? this.defaultDepartmentCode,
      defaultTenantCode: defaultTenantCode ?? this.defaultTenantCode,
      createdBy: createdBy ?? this.createdBy,
      status: status ?? this.status,
    );
  }

  /// Convert object to JSON
  Map<String, dynamic> toJson() {
    return {
      "mailId": mailId,
      "userId": userId,
      "userPassword": userPassword,
      "userType": userType,
      "firstName": firstName,
      "countryCode": countryCode,
      "langCode": langCode,
      "entityCode": entityCode,
      "entityType": entityType,
      "id": id,
      "mobileNo": mobileNo,
      "altMobileNo": altMobileNo,
      "createdOn": createdOn,
      "expiryDate": expiryDate,
      "userDesignation": userDesignation,
      "secondName": secondName,
      "lastName": lastName,
      "preferredName": preferredName,
      "userLanguage": userLanguage,
      "defaultBranchCode": defaultBranchCode,
      "defaultDepartmentCode": defaultDepartmentCode,
      "defaultTenantCode": defaultTenantCode,
      "createdBy": createdBy,
      "status": status,
    };
  }

  /// Convert JSON to String
  String toJsonString() {
    return jsonEncode(toJson());
  }
}
