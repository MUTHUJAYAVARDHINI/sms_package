// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForgotPasswordResponse _$ForgotPasswordResponseFromJson(
    Map<String, dynamic> json) {
  return _ForgotPasswordResponse.fromJson(json);
}

/// @nodoc
mixin _$ForgotPasswordResponse {
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;

  /// Serializes this ForgotPasswordResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForgotPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForgotPasswordResponseCopyWith<ForgotPasswordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordResponseCopyWith<$Res> {
  factory $ForgotPasswordResponseCopyWith(ForgotPasswordResponse value,
          $Res Function(ForgotPasswordResponse) then) =
      _$ForgotPasswordResponseCopyWithImpl<$Res, ForgotPasswordResponse>;
  @useResult
  $Res call({@JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ForgotPasswordResponseCopyWithImpl<$Res,
        $Val extends ForgotPasswordResponse>
    implements $ForgotPasswordResponseCopyWith<$Res> {
  _$ForgotPasswordResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgotPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  /// Create a copy of ForgotPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForgotPasswordResponseImplCopyWith<$Res>
    implements $ForgotPasswordResponseCopyWith<$Res> {
  factory _$$ForgotPasswordResponseImplCopyWith(
          _$ForgotPasswordResponseImpl value,
          $Res Function(_$ForgotPasswordResponseImpl) then) =
      __$$ForgotPasswordResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ForgotPasswordResponseImplCopyWithImpl<$Res>
    extends _$ForgotPasswordResponseCopyWithImpl<$Res,
        _$ForgotPasswordResponseImpl>
    implements _$$ForgotPasswordResponseImplCopyWith<$Res> {
  __$$ForgotPasswordResponseImplCopyWithImpl(
      _$ForgotPasswordResponseImpl _value,
      $Res Function(_$ForgotPasswordResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ForgotPasswordResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgotPasswordResponseImpl implements _ForgotPasswordResponse {
  const _$ForgotPasswordResponseImpl({@JsonKey(name: "data") this.data});

  factory _$ForgotPasswordResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgotPasswordResponseImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final Data? data;

  @override
  String toString() {
    return 'ForgotPasswordResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of ForgotPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordResponseImplCopyWith<_$ForgotPasswordResponseImpl>
      get copyWith => __$$ForgotPasswordResponseImplCopyWithImpl<
          _$ForgotPasswordResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgotPasswordResponseImplToJson(
      this,
    );
  }
}

abstract class _ForgotPasswordResponse implements ForgotPasswordResponse {
  const factory _ForgotPasswordResponse(
      {@JsonKey(name: "data") final Data? data}) = _$ForgotPasswordResponseImpl;

  factory _ForgotPasswordResponse.fromJson(Map<String, dynamic> json) =
      _$ForgotPasswordResponseImpl.fromJson;

  @override
  @JsonKey(name: "data")
  Data? get data;

  /// Create a copy of ForgotPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordResponseImplCopyWith<_$ForgotPasswordResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "countryCode")
  dynamic get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "entityCode")
  dynamic get entityCode => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  dynamic get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "userType")
  dynamic get userType => throw _privateConstructorUsedError;
  @JsonKey(name: "userDesignation")
  dynamic get userDesignation => throw _privateConstructorUsedError;
  @JsonKey(name: "firstName")
  dynamic get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "secondName")
  dynamic get secondName => throw _privateConstructorUsedError;
  @JsonKey(name: "lastName")
  dynamic get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "preferredName")
  dynamic get preferredName => throw _privateConstructorUsedError;
  @JsonKey(name: "mobileNo")
  dynamic get mobileNo => throw _privateConstructorUsedError;
  @JsonKey(name: "altMobileNo")
  dynamic get altMobileNo => throw _privateConstructorUsedError;
  @JsonKey(name: "createdOn")
  dynamic get createdOn => throw _privateConstructorUsedError;
  @JsonKey(name: "expiryDate")
  dynamic get expiryDate => throw _privateConstructorUsedError;
  @JsonKey(name: "userLanguage")
  dynamic get userLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "defaultBranchCode")
  dynamic get defaultBranchCode => throw _privateConstructorUsedError;
  @JsonKey(name: "defaultDepartmentCode")
  dynamic get defaultDepartmentCode => throw _privateConstructorUsedError;
  @JsonKey(name: "defaultTenantCode")
  dynamic get defaultTenantCode => throw _privateConstructorUsedError;
  @JsonKey(name: "mailId")
  String? get mailId => throw _privateConstructorUsedError;
  @JsonKey(name: "userPassword")
  dynamic get userPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "createdBy")
  dynamic get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  dynamic get status => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  dynamic get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "entityType")
  dynamic get entityType => throw _privateConstructorUsedError;
  @JsonKey(name: "ErrorCodeDTO")
  List<ErrorCodeDto>? get errorCodeDto => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "countryCode") dynamic countryCode,
      @JsonKey(name: "entityCode") dynamic entityCode,
      @JsonKey(name: "id") dynamic id,
      @JsonKey(name: "userId") dynamic userId,
      @JsonKey(name: "userType") dynamic userType,
      @JsonKey(name: "userDesignation") dynamic userDesignation,
      @JsonKey(name: "firstName") dynamic firstName,
      @JsonKey(name: "secondName") dynamic secondName,
      @JsonKey(name: "lastName") dynamic lastName,
      @JsonKey(name: "preferredName") dynamic preferredName,
      @JsonKey(name: "mobileNo") dynamic mobileNo,
      @JsonKey(name: "altMobileNo") dynamic altMobileNo,
      @JsonKey(name: "createdOn") dynamic createdOn,
      @JsonKey(name: "expiryDate") dynamic expiryDate,
      @JsonKey(name: "userLanguage") dynamic userLanguage,
      @JsonKey(name: "defaultBranchCode") dynamic defaultBranchCode,
      @JsonKey(name: "defaultDepartmentCode") dynamic defaultDepartmentCode,
      @JsonKey(name: "defaultTenantCode") dynamic defaultTenantCode,
      @JsonKey(name: "mailId") String? mailId,
      @JsonKey(name: "userPassword") dynamic userPassword,
      @JsonKey(name: "createdBy") dynamic createdBy,
      @JsonKey(name: "status") dynamic status,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "entityType") dynamic entityType,
      @JsonKey(name: "ErrorCodeDTO") List<ErrorCodeDto>? errorCodeDto});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = freezed,
    Object? entityCode = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? userType = freezed,
    Object? userDesignation = freezed,
    Object? firstName = freezed,
    Object? secondName = freezed,
    Object? lastName = freezed,
    Object? preferredName = freezed,
    Object? mobileNo = freezed,
    Object? altMobileNo = freezed,
    Object? createdOn = freezed,
    Object? expiryDate = freezed,
    Object? userLanguage = freezed,
    Object? defaultBranchCode = freezed,
    Object? defaultDepartmentCode = freezed,
    Object? defaultTenantCode = freezed,
    Object? mailId = freezed,
    Object? userPassword = freezed,
    Object? createdBy = freezed,
    Object? status = freezed,
    Object? otp = freezed,
    Object? entityType = freezed,
    Object? errorCodeDto = freezed,
  }) {
    return _then(_value.copyWith(
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      entityCode: freezed == entityCode
          ? _value.entityCode
          : entityCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userDesignation: freezed == userDesignation
          ? _value.userDesignation
          : userDesignation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      secondName: freezed == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      preferredName: freezed == preferredName
          ? _value.preferredName
          : preferredName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      altMobileNo: freezed == altMobileNo
          ? _value.altMobileNo
          : altMobileNo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as dynamic,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userLanguage: freezed == userLanguage
          ? _value.userLanguage
          : userLanguage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      defaultBranchCode: freezed == defaultBranchCode
          ? _value.defaultBranchCode
          : defaultBranchCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      defaultDepartmentCode: freezed == defaultDepartmentCode
          ? _value.defaultDepartmentCode
          : defaultDepartmentCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      defaultTenantCode: freezed == defaultTenantCode
          ? _value.defaultTenantCode
          : defaultTenantCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mailId: freezed == mailId
          ? _value.mailId
          : mailId // ignore: cast_nullable_to_non_nullable
              as String?,
      userPassword: freezed == userPassword
          ? _value.userPassword
          : userPassword // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      entityType: freezed == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      errorCodeDto: freezed == errorCodeDto
          ? _value.errorCodeDto
          : errorCodeDto // ignore: cast_nullable_to_non_nullable
              as List<ErrorCodeDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "countryCode") dynamic countryCode,
      @JsonKey(name: "entityCode") dynamic entityCode,
      @JsonKey(name: "id") dynamic id,
      @JsonKey(name: "userId") dynamic userId,
      @JsonKey(name: "userType") dynamic userType,
      @JsonKey(name: "userDesignation") dynamic userDesignation,
      @JsonKey(name: "firstName") dynamic firstName,
      @JsonKey(name: "secondName") dynamic secondName,
      @JsonKey(name: "lastName") dynamic lastName,
      @JsonKey(name: "preferredName") dynamic preferredName,
      @JsonKey(name: "mobileNo") dynamic mobileNo,
      @JsonKey(name: "altMobileNo") dynamic altMobileNo,
      @JsonKey(name: "createdOn") dynamic createdOn,
      @JsonKey(name: "expiryDate") dynamic expiryDate,
      @JsonKey(name: "userLanguage") dynamic userLanguage,
      @JsonKey(name: "defaultBranchCode") dynamic defaultBranchCode,
      @JsonKey(name: "defaultDepartmentCode") dynamic defaultDepartmentCode,
      @JsonKey(name: "defaultTenantCode") dynamic defaultTenantCode,
      @JsonKey(name: "mailId") String? mailId,
      @JsonKey(name: "userPassword") dynamic userPassword,
      @JsonKey(name: "createdBy") dynamic createdBy,
      @JsonKey(name: "status") dynamic status,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "entityType") dynamic entityType,
      @JsonKey(name: "ErrorCodeDTO") List<ErrorCodeDto>? errorCodeDto});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = freezed,
    Object? entityCode = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? userType = freezed,
    Object? userDesignation = freezed,
    Object? firstName = freezed,
    Object? secondName = freezed,
    Object? lastName = freezed,
    Object? preferredName = freezed,
    Object? mobileNo = freezed,
    Object? altMobileNo = freezed,
    Object? createdOn = freezed,
    Object? expiryDate = freezed,
    Object? userLanguage = freezed,
    Object? defaultBranchCode = freezed,
    Object? defaultDepartmentCode = freezed,
    Object? defaultTenantCode = freezed,
    Object? mailId = freezed,
    Object? userPassword = freezed,
    Object? createdBy = freezed,
    Object? status = freezed,
    Object? otp = freezed,
    Object? entityType = freezed,
    Object? errorCodeDto = freezed,
  }) {
    return _then(_$DataImpl(
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      entityCode: freezed == entityCode
          ? _value.entityCode
          : entityCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userDesignation: freezed == userDesignation
          ? _value.userDesignation
          : userDesignation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      secondName: freezed == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      preferredName: freezed == preferredName
          ? _value.preferredName
          : preferredName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      altMobileNo: freezed == altMobileNo
          ? _value.altMobileNo
          : altMobileNo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as dynamic,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userLanguage: freezed == userLanguage
          ? _value.userLanguage
          : userLanguage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      defaultBranchCode: freezed == defaultBranchCode
          ? _value.defaultBranchCode
          : defaultBranchCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      defaultDepartmentCode: freezed == defaultDepartmentCode
          ? _value.defaultDepartmentCode
          : defaultDepartmentCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      defaultTenantCode: freezed == defaultTenantCode
          ? _value.defaultTenantCode
          : defaultTenantCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mailId: freezed == mailId
          ? _value.mailId
          : mailId // ignore: cast_nullable_to_non_nullable
              as String?,
      userPassword: freezed == userPassword
          ? _value.userPassword
          : userPassword // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      entityType: freezed == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      errorCodeDto: freezed == errorCodeDto
          ? _value._errorCodeDto
          : errorCodeDto // ignore: cast_nullable_to_non_nullable
              as List<ErrorCodeDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "countryCode") this.countryCode,
      @JsonKey(name: "entityCode") this.entityCode,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "userType") this.userType,
      @JsonKey(name: "userDesignation") this.userDesignation,
      @JsonKey(name: "firstName") this.firstName,
      @JsonKey(name: "secondName") this.secondName,
      @JsonKey(name: "lastName") this.lastName,
      @JsonKey(name: "preferredName") this.preferredName,
      @JsonKey(name: "mobileNo") this.mobileNo,
      @JsonKey(name: "altMobileNo") this.altMobileNo,
      @JsonKey(name: "createdOn") this.createdOn,
      @JsonKey(name: "expiryDate") this.expiryDate,
      @JsonKey(name: "userLanguage") this.userLanguage,
      @JsonKey(name: "defaultBranchCode") this.defaultBranchCode,
      @JsonKey(name: "defaultDepartmentCode") this.defaultDepartmentCode,
      @JsonKey(name: "defaultTenantCode") this.defaultTenantCode,
      @JsonKey(name: "mailId") this.mailId,
      @JsonKey(name: "userPassword") this.userPassword,
      @JsonKey(name: "createdBy") this.createdBy,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "otp") this.otp,
      @JsonKey(name: "entityType") this.entityType,
      @JsonKey(name: "ErrorCodeDTO") final List<ErrorCodeDto>? errorCodeDto})
      : _errorCodeDto = errorCodeDto;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "countryCode")
  final dynamic countryCode;
  @override
  @JsonKey(name: "entityCode")
  final dynamic entityCode;
  @override
  @JsonKey(name: "id")
  final dynamic id;
  @override
  @JsonKey(name: "userId")
  final dynamic userId;
  @override
  @JsonKey(name: "userType")
  final dynamic userType;
  @override
  @JsonKey(name: "userDesignation")
  final dynamic userDesignation;
  @override
  @JsonKey(name: "firstName")
  final dynamic firstName;
  @override
  @JsonKey(name: "secondName")
  final dynamic secondName;
  @override
  @JsonKey(name: "lastName")
  final dynamic lastName;
  @override
  @JsonKey(name: "preferredName")
  final dynamic preferredName;
  @override
  @JsonKey(name: "mobileNo")
  final dynamic mobileNo;
  @override
  @JsonKey(name: "altMobileNo")
  final dynamic altMobileNo;
  @override
  @JsonKey(name: "createdOn")
  final dynamic createdOn;
  @override
  @JsonKey(name: "expiryDate")
  final dynamic expiryDate;
  @override
  @JsonKey(name: "userLanguage")
  final dynamic userLanguage;
  @override
  @JsonKey(name: "defaultBranchCode")
  final dynamic defaultBranchCode;
  @override
  @JsonKey(name: "defaultDepartmentCode")
  final dynamic defaultDepartmentCode;
  @override
  @JsonKey(name: "defaultTenantCode")
  final dynamic defaultTenantCode;
  @override
  @JsonKey(name: "mailId")
  final String? mailId;
  @override
  @JsonKey(name: "userPassword")
  final dynamic userPassword;
  @override
  @JsonKey(name: "createdBy")
  final dynamic createdBy;
  @override
  @JsonKey(name: "status")
  final dynamic status;
  @override
  @JsonKey(name: "otp")
  final dynamic otp;
  @override
  @JsonKey(name: "entityType")
  final dynamic entityType;
  final List<ErrorCodeDto>? _errorCodeDto;
  @override
  @JsonKey(name: "ErrorCodeDTO")
  List<ErrorCodeDto>? get errorCodeDto {
    final value = _errorCodeDto;
    if (value == null) return null;
    if (_errorCodeDto is EqualUnmodifiableListView) return _errorCodeDto;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(countryCode: $countryCode, entityCode: $entityCode, id: $id, userId: $userId, userType: $userType, userDesignation: $userDesignation, firstName: $firstName, secondName: $secondName, lastName: $lastName, preferredName: $preferredName, mobileNo: $mobileNo, altMobileNo: $altMobileNo, createdOn: $createdOn, expiryDate: $expiryDate, userLanguage: $userLanguage, defaultBranchCode: $defaultBranchCode, defaultDepartmentCode: $defaultDepartmentCode, defaultTenantCode: $defaultTenantCode, mailId: $mailId, userPassword: $userPassword, createdBy: $createdBy, status: $status, otp: $otp, entityType: $entityType, errorCodeDto: $errorCodeDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality()
                .equals(other.countryCode, countryCode) &&
            const DeepCollectionEquality()
                .equals(other.entityCode, entityCode) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.userType, userType) &&
            const DeepCollectionEquality()
                .equals(other.userDesignation, userDesignation) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality()
                .equals(other.secondName, secondName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.preferredName, preferredName) &&
            const DeepCollectionEquality().equals(other.mobileNo, mobileNo) &&
            const DeepCollectionEquality()
                .equals(other.altMobileNo, altMobileNo) &&
            const DeepCollectionEquality().equals(other.createdOn, createdOn) &&
            const DeepCollectionEquality()
                .equals(other.expiryDate, expiryDate) &&
            const DeepCollectionEquality()
                .equals(other.userLanguage, userLanguage) &&
            const DeepCollectionEquality()
                .equals(other.defaultBranchCode, defaultBranchCode) &&
            const DeepCollectionEquality()
                .equals(other.defaultDepartmentCode, defaultDepartmentCode) &&
            const DeepCollectionEquality()
                .equals(other.defaultTenantCode, defaultTenantCode) &&
            (identical(other.mailId, mailId) || other.mailId == mailId) &&
            const DeepCollectionEquality()
                .equals(other.userPassword, userPassword) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            const DeepCollectionEquality()
                .equals(other.entityType, entityType) &&
            const DeepCollectionEquality()
                .equals(other._errorCodeDto, _errorCodeDto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(countryCode),
        const DeepCollectionEquality().hash(entityCode),
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(userType),
        const DeepCollectionEquality().hash(userDesignation),
        const DeepCollectionEquality().hash(firstName),
        const DeepCollectionEquality().hash(secondName),
        const DeepCollectionEquality().hash(lastName),
        const DeepCollectionEquality().hash(preferredName),
        const DeepCollectionEquality().hash(mobileNo),
        const DeepCollectionEquality().hash(altMobileNo),
        const DeepCollectionEquality().hash(createdOn),
        const DeepCollectionEquality().hash(expiryDate),
        const DeepCollectionEquality().hash(userLanguage),
        const DeepCollectionEquality().hash(defaultBranchCode),
        const DeepCollectionEquality().hash(defaultDepartmentCode),
        const DeepCollectionEquality().hash(defaultTenantCode),
        mailId,
        const DeepCollectionEquality().hash(userPassword),
        const DeepCollectionEquality().hash(createdBy),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(otp),
        const DeepCollectionEquality().hash(entityType),
        const DeepCollectionEquality().hash(_errorCodeDto)
      ]);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "countryCode") final dynamic countryCode,
      @JsonKey(name: "entityCode") final dynamic entityCode,
      @JsonKey(name: "id") final dynamic id,
      @JsonKey(name: "userId") final dynamic userId,
      @JsonKey(name: "userType") final dynamic userType,
      @JsonKey(name: "userDesignation") final dynamic userDesignation,
      @JsonKey(name: "firstName") final dynamic firstName,
      @JsonKey(name: "secondName") final dynamic secondName,
      @JsonKey(name: "lastName") final dynamic lastName,
      @JsonKey(name: "preferredName") final dynamic preferredName,
      @JsonKey(name: "mobileNo") final dynamic mobileNo,
      @JsonKey(name: "altMobileNo") final dynamic altMobileNo,
      @JsonKey(name: "createdOn") final dynamic createdOn,
      @JsonKey(name: "expiryDate") final dynamic expiryDate,
      @JsonKey(name: "userLanguage") final dynamic userLanguage,
      @JsonKey(name: "defaultBranchCode") final dynamic defaultBranchCode,
      @JsonKey(name: "defaultDepartmentCode")
      final dynamic defaultDepartmentCode,
      @JsonKey(name: "defaultTenantCode") final dynamic defaultTenantCode,
      @JsonKey(name: "mailId") final String? mailId,
      @JsonKey(name: "userPassword") final dynamic userPassword,
      @JsonKey(name: "createdBy") final dynamic createdBy,
      @JsonKey(name: "status") final dynamic status,
      @JsonKey(name: "otp") final dynamic otp,
      @JsonKey(name: "entityType") final dynamic entityType,
      @JsonKey(name: "ErrorCodeDTO")
      final List<ErrorCodeDto>? errorCodeDto}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "countryCode")
  dynamic get countryCode;
  @override
  @JsonKey(name: "entityCode")
  dynamic get entityCode;
  @override
  @JsonKey(name: "id")
  dynamic get id;
  @override
  @JsonKey(name: "userId")
  dynamic get userId;
  @override
  @JsonKey(name: "userType")
  dynamic get userType;
  @override
  @JsonKey(name: "userDesignation")
  dynamic get userDesignation;
  @override
  @JsonKey(name: "firstName")
  dynamic get firstName;
  @override
  @JsonKey(name: "secondName")
  dynamic get secondName;
  @override
  @JsonKey(name: "lastName")
  dynamic get lastName;
  @override
  @JsonKey(name: "preferredName")
  dynamic get preferredName;
  @override
  @JsonKey(name: "mobileNo")
  dynamic get mobileNo;
  @override
  @JsonKey(name: "altMobileNo")
  dynamic get altMobileNo;
  @override
  @JsonKey(name: "createdOn")
  dynamic get createdOn;
  @override
  @JsonKey(name: "expiryDate")
  dynamic get expiryDate;
  @override
  @JsonKey(name: "userLanguage")
  dynamic get userLanguage;
  @override
  @JsonKey(name: "defaultBranchCode")
  dynamic get defaultBranchCode;
  @override
  @JsonKey(name: "defaultDepartmentCode")
  dynamic get defaultDepartmentCode;
  @override
  @JsonKey(name: "defaultTenantCode")
  dynamic get defaultTenantCode;
  @override
  @JsonKey(name: "mailId")
  String? get mailId;
  @override
  @JsonKey(name: "userPassword")
  dynamic get userPassword;
  @override
  @JsonKey(name: "createdBy")
  dynamic get createdBy;
  @override
  @JsonKey(name: "status")
  dynamic get status;
  @override
  @JsonKey(name: "otp")
  dynamic get otp;
  @override
  @JsonKey(name: "entityType")
  dynamic get entityType;
  @override
  @JsonKey(name: "ErrorCodeDTO")
  List<ErrorCodeDto>? get errorCodeDto;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorCodeDto _$ErrorCodeDtoFromJson(Map<String, dynamic> json) {
  return _ErrorCodeDto.fromJson(json);
}

/// @nodoc
mixin _$ErrorCodeDto {
  @JsonKey(name: "errorCode")
  String? get errorCode => throw _privateConstructorUsedError;
  @JsonKey(name: "errorDesc")
  String? get errorDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "langCode")
  String? get langCode => throw _privateConstructorUsedError;
  @JsonKey(name: "errorType")
  String? get errorType => throw _privateConstructorUsedError;

  /// Serializes this ErrorCodeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ErrorCodeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorCodeDtoCopyWith<ErrorCodeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCodeDtoCopyWith<$Res> {
  factory $ErrorCodeDtoCopyWith(
          ErrorCodeDto value, $Res Function(ErrorCodeDto) then) =
      _$ErrorCodeDtoCopyWithImpl<$Res, ErrorCodeDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "errorCode") String? errorCode,
      @JsonKey(name: "errorDesc") String? errorDesc,
      @JsonKey(name: "langCode") String? langCode,
      @JsonKey(name: "errorType") String? errorType});
}

/// @nodoc
class _$ErrorCodeDtoCopyWithImpl<$Res, $Val extends ErrorCodeDto>
    implements $ErrorCodeDtoCopyWith<$Res> {
  _$ErrorCodeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorCodeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
    Object? errorDesc = freezed,
    Object? langCode = freezed,
    Object? errorType = freezed,
  }) {
    return _then(_value.copyWith(
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorDesc: freezed == errorDesc
          ? _value.errorDesc
          : errorDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      langCode: freezed == langCode
          ? _value.langCode
          : langCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorType: freezed == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorCodeDtoImplCopyWith<$Res>
    implements $ErrorCodeDtoCopyWith<$Res> {
  factory _$$ErrorCodeDtoImplCopyWith(
          _$ErrorCodeDtoImpl value, $Res Function(_$ErrorCodeDtoImpl) then) =
      __$$ErrorCodeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "errorCode") String? errorCode,
      @JsonKey(name: "errorDesc") String? errorDesc,
      @JsonKey(name: "langCode") String? langCode,
      @JsonKey(name: "errorType") String? errorType});
}

/// @nodoc
class __$$ErrorCodeDtoImplCopyWithImpl<$Res>
    extends _$ErrorCodeDtoCopyWithImpl<$Res, _$ErrorCodeDtoImpl>
    implements _$$ErrorCodeDtoImplCopyWith<$Res> {
  __$$ErrorCodeDtoImplCopyWithImpl(
      _$ErrorCodeDtoImpl _value, $Res Function(_$ErrorCodeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorCodeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
    Object? errorDesc = freezed,
    Object? langCode = freezed,
    Object? errorType = freezed,
  }) {
    return _then(_$ErrorCodeDtoImpl(
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorDesc: freezed == errorDesc
          ? _value.errorDesc
          : errorDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      langCode: freezed == langCode
          ? _value.langCode
          : langCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorType: freezed == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorCodeDtoImpl implements _ErrorCodeDto {
  const _$ErrorCodeDtoImpl(
      {@JsonKey(name: "errorCode") this.errorCode,
      @JsonKey(name: "errorDesc") this.errorDesc,
      @JsonKey(name: "langCode") this.langCode,
      @JsonKey(name: "errorType") this.errorType});

  factory _$ErrorCodeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorCodeDtoImplFromJson(json);

  @override
  @JsonKey(name: "errorCode")
  final String? errorCode;
  @override
  @JsonKey(name: "errorDesc")
  final String? errorDesc;
  @override
  @JsonKey(name: "langCode")
  final String? langCode;
  @override
  @JsonKey(name: "errorType")
  final String? errorType;

  @override
  String toString() {
    return 'ErrorCodeDto(errorCode: $errorCode, errorDesc: $errorDesc, langCode: $langCode, errorType: $errorType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorCodeDtoImpl &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorDesc, errorDesc) ||
                other.errorDesc == errorDesc) &&
            (identical(other.langCode, langCode) ||
                other.langCode == langCode) &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, errorCode, errorDesc, langCode, errorType);

  /// Create a copy of ErrorCodeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCodeDtoImplCopyWith<_$ErrorCodeDtoImpl> get copyWith =>
      __$$ErrorCodeDtoImplCopyWithImpl<_$ErrorCodeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorCodeDtoImplToJson(
      this,
    );
  }
}

abstract class _ErrorCodeDto implements ErrorCodeDto {
  const factory _ErrorCodeDto(
          {@JsonKey(name: "errorCode") final String? errorCode,
          @JsonKey(name: "errorDesc") final String? errorDesc,
          @JsonKey(name: "langCode") final String? langCode,
          @JsonKey(name: "errorType") final String? errorType}) =
      _$ErrorCodeDtoImpl;

  factory _ErrorCodeDto.fromJson(Map<String, dynamic> json) =
      _$ErrorCodeDtoImpl.fromJson;

  @override
  @JsonKey(name: "errorCode")
  String? get errorCode;
  @override
  @JsonKey(name: "errorDesc")
  String? get errorDesc;
  @override
  @JsonKey(name: "langCode")
  String? get langCode;
  @override
  @JsonKey(name: "errorType")
  String? get errorType;

  /// Create a copy of ErrorCodeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorCodeDtoImplCopyWith<_$ErrorCodeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
