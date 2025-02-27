// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courseTopic_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseTopicResponse _$CourseTopicResponseFromJson(Map<String, dynamic> json) {
  return _CourseTopicResponse.fromJson(json);
}

/// @nodoc
mixin _$CourseTopicResponse {
  int get code => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  CourseTopicData get data => throw _privateConstructorUsedError;

  /// Serializes this CourseTopicResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseTopicResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseTopicResponseCopyWith<CourseTopicResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseTopicResponseCopyWith<$Res> {
  factory $CourseTopicResponseCopyWith(
          CourseTopicResponse value, $Res Function(CourseTopicResponse) then) =
      _$CourseTopicResponseCopyWithImpl<$Res, CourseTopicResponse>;
  @useResult
  $Res call({int code, bool status, String message, CourseTopicData data});

  $CourseTopicDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CourseTopicResponseCopyWithImpl<$Res, $Val extends CourseTopicResponse>
    implements $CourseTopicResponseCopyWith<$Res> {
  _$CourseTopicResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseTopicResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CourseTopicData,
    ) as $Val);
  }

  /// Create a copy of CourseTopicResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CourseTopicDataCopyWith<$Res> get data {
    return $CourseTopicDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseTopicResponseImplCopyWith<$Res>
    implements $CourseTopicResponseCopyWith<$Res> {
  factory _$$CourseTopicResponseImplCopyWith(_$CourseTopicResponseImpl value,
          $Res Function(_$CourseTopicResponseImpl) then) =
      __$$CourseTopicResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, bool status, String message, CourseTopicData data});

  @override
  $CourseTopicDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$CourseTopicResponseImplCopyWithImpl<$Res>
    extends _$CourseTopicResponseCopyWithImpl<$Res, _$CourseTopicResponseImpl>
    implements _$$CourseTopicResponseImplCopyWith<$Res> {
  __$$CourseTopicResponseImplCopyWithImpl(_$CourseTopicResponseImpl _value,
      $Res Function(_$CourseTopicResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseTopicResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$CourseTopicResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CourseTopicData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseTopicResponseImpl implements _CourseTopicResponse {
  const _$CourseTopicResponseImpl(
      {required this.code,
      required this.status,
      required this.message,
      required this.data});

  factory _$CourseTopicResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseTopicResponseImplFromJson(json);

  @override
  final int code;
  @override
  final bool status;
  @override
  final String message;
  @override
  final CourseTopicData data;

  @override
  String toString() {
    return 'CourseTopicResponse(code: $code, status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTopicResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, message, data);

  /// Create a copy of CourseTopicResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTopicResponseImplCopyWith<_$CourseTopicResponseImpl> get copyWith =>
      __$$CourseTopicResponseImplCopyWithImpl<_$CourseTopicResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseTopicResponseImplToJson(
      this,
    );
  }
}

abstract class _CourseTopicResponse implements CourseTopicResponse {
  const factory _CourseTopicResponse(
      {required final int code,
      required final bool status,
      required final String message,
      required final CourseTopicData data}) = _$CourseTopicResponseImpl;

  factory _CourseTopicResponse.fromJson(Map<String, dynamic> json) =
      _$CourseTopicResponseImpl.fromJson;

  @override
  int get code;
  @override
  bool get status;
  @override
  String get message;
  @override
  CourseTopicData get data;

  /// Create a copy of CourseTopicResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseTopicResponseImplCopyWith<_$CourseTopicResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
