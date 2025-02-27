// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'empowerment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmpowermentResponse _$EmpowermentResponseFromJson(Map<String, dynamic> json) {
  return _EmpowermentResponse.fromJson(json);
}

/// @nodoc
mixin _$EmpowermentResponse {
  int get code => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<EmpowermentData> get data => throw _privateConstructorUsedError;

  /// Serializes this EmpowermentResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmpowermentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmpowermentResponseCopyWith<EmpowermentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmpowermentResponseCopyWith<$Res> {
  factory $EmpowermentResponseCopyWith(
          EmpowermentResponse value, $Res Function(EmpowermentResponse) then) =
      _$EmpowermentResponseCopyWithImpl<$Res, EmpowermentResponse>;
  @useResult
  $Res call(
      {int code, bool status, String message, List<EmpowermentData> data});
}

/// @nodoc
class _$EmpowermentResponseCopyWithImpl<$Res, $Val extends EmpowermentResponse>
    implements $EmpowermentResponseCopyWith<$Res> {
  _$EmpowermentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmpowermentResponse
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
              as List<EmpowermentData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmpowermentResponseImplCopyWith<$Res>
    implements $EmpowermentResponseCopyWith<$Res> {
  factory _$$EmpowermentResponseImplCopyWith(_$EmpowermentResponseImpl value,
          $Res Function(_$EmpowermentResponseImpl) then) =
      __$$EmpowermentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code, bool status, String message, List<EmpowermentData> data});
}

/// @nodoc
class __$$EmpowermentResponseImplCopyWithImpl<$Res>
    extends _$EmpowermentResponseCopyWithImpl<$Res, _$EmpowermentResponseImpl>
    implements _$$EmpowermentResponseImplCopyWith<$Res> {
  __$$EmpowermentResponseImplCopyWithImpl(_$EmpowermentResponseImpl _value,
      $Res Function(_$EmpowermentResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmpowermentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$EmpowermentResponseImpl(
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
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EmpowermentData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmpowermentResponseImpl implements _EmpowermentResponse {
  const _$EmpowermentResponseImpl(
      {required this.code,
      required this.status,
      required this.message,
      required final List<EmpowermentData> data})
      : _data = data;

  factory _$EmpowermentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmpowermentResponseImplFromJson(json);

  @override
  final int code;
  @override
  final bool status;
  @override
  final String message;
  final List<EmpowermentData> _data;
  @override
  List<EmpowermentData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'EmpowermentResponse(code: $code, status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmpowermentResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, message,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of EmpowermentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmpowermentResponseImplCopyWith<_$EmpowermentResponseImpl> get copyWith =>
      __$$EmpowermentResponseImplCopyWithImpl<_$EmpowermentResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmpowermentResponseImplToJson(
      this,
    );
  }
}

abstract class _EmpowermentResponse implements EmpowermentResponse {
  const factory _EmpowermentResponse(
      {required final int code,
      required final bool status,
      required final String message,
      required final List<EmpowermentData> data}) = _$EmpowermentResponseImpl;

  factory _EmpowermentResponse.fromJson(Map<String, dynamic> json) =
      _$EmpowermentResponseImpl.fromJson;

  @override
  int get code;
  @override
  bool get status;
  @override
  String get message;
  @override
  List<EmpowermentData> get data;

  /// Create a copy of EmpowermentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmpowermentResponseImplCopyWith<_$EmpowermentResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
