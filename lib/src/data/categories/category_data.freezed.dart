// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoriesData _$CategoriesDataFromJson(Map<String, dynamic> json) {
  return _CategoriesData.fromJson(json);
}

/// @nodoc
mixin _$CategoriesData {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get is_active => throw _privateConstructorUsedError; // Made nullable
  @JsonKey(name: 'category_name')
  String get category_name => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_image_url')
  String get category_image_url => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_description')
  String get category_description => throw _privateConstructorUsedError;

  /// Serializes this CategoriesData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesDataCopyWith<CategoriesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesDataCopyWith<$Res> {
  factory $CategoriesDataCopyWith(
          CategoriesData value, $Res Function(CategoriesData) then) =
      _$CategoriesDataCopyWithImpl<$Res, CategoriesData>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'is_active') bool? is_active,
      @JsonKey(name: 'category_name') String category_name,
      @JsonKey(name: 'category_image_url') String category_image_url,
      @JsonKey(name: 'category_description') String category_description});
}

/// @nodoc
class _$CategoriesDataCopyWithImpl<$Res, $Val extends CategoriesData>
    implements $CategoriesDataCopyWith<$Res> {
  _$CategoriesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? is_active = freezed,
    Object? category_name = null,
    Object? category_image_url = null,
    Object? category_description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      is_active: freezed == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as bool?,
      category_name: null == category_name
          ? _value.category_name
          : category_name // ignore: cast_nullable_to_non_nullable
              as String,
      category_image_url: null == category_image_url
          ? _value.category_image_url
          : category_image_url // ignore: cast_nullable_to_non_nullable
              as String,
      category_description: null == category_description
          ? _value.category_description
          : category_description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesDataImplCopyWith<$Res>
    implements $CategoriesDataCopyWith<$Res> {
  factory _$$CategoriesDataImplCopyWith(_$CategoriesDataImpl value,
          $Res Function(_$CategoriesDataImpl) then) =
      __$$CategoriesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'is_active') bool? is_active,
      @JsonKey(name: 'category_name') String category_name,
      @JsonKey(name: 'category_image_url') String category_image_url,
      @JsonKey(name: 'category_description') String category_description});
}

/// @nodoc
class __$$CategoriesDataImplCopyWithImpl<$Res>
    extends _$CategoriesDataCopyWithImpl<$Res, _$CategoriesDataImpl>
    implements _$$CategoriesDataImplCopyWith<$Res> {
  __$$CategoriesDataImplCopyWithImpl(
      _$CategoriesDataImpl _value, $Res Function(_$CategoriesDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? is_active = freezed,
    Object? category_name = null,
    Object? category_image_url = null,
    Object? category_description = null,
  }) {
    return _then(_$CategoriesDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      is_active: freezed == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as bool?,
      category_name: null == category_name
          ? _value.category_name
          : category_name // ignore: cast_nullable_to_non_nullable
              as String,
      category_image_url: null == category_image_url
          ? _value.category_image_url
          : category_image_url // ignore: cast_nullable_to_non_nullable
              as String,
      category_description: null == category_description
          ? _value.category_description
          : category_description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesDataImpl implements _CategoriesData {
  const _$CategoriesDataImpl(
      {required this.id,
      @JsonKey(name: 'is_active') required this.is_active,
      @JsonKey(name: 'category_name') required this.category_name,
      @JsonKey(name: 'category_image_url') required this.category_image_url,
      @JsonKey(name: 'category_description')
      required this.category_description});

  factory _$CategoriesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesDataImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'is_active')
  final bool? is_active;
// Made nullable
  @override
  @JsonKey(name: 'category_name')
  final String category_name;
  @override
  @JsonKey(name: 'category_image_url')
  final String category_image_url;
  @override
  @JsonKey(name: 'category_description')
  final String category_description;

  @override
  String toString() {
    return 'CategoriesData(id: $id, is_active: $is_active, category_name: $category_name, category_image_url: $category_image_url, category_description: $category_description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.is_active, is_active) ||
                other.is_active == is_active) &&
            (identical(other.category_name, category_name) ||
                other.category_name == category_name) &&
            (identical(other.category_image_url, category_image_url) ||
                other.category_image_url == category_image_url) &&
            (identical(other.category_description, category_description) ||
                other.category_description == category_description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, is_active, category_name,
      category_image_url, category_description);

  /// Create a copy of CategoriesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesDataImplCopyWith<_$CategoriesDataImpl> get copyWith =>
      __$$CategoriesDataImplCopyWithImpl<_$CategoriesDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesDataImplToJson(
      this,
    );
  }
}

abstract class _CategoriesData implements CategoriesData {
  const factory _CategoriesData(
      {required final String id,
      @JsonKey(name: 'is_active') required final bool? is_active,
      @JsonKey(name: 'category_name') required final String category_name,
      @JsonKey(name: 'category_image_url')
      required final String category_image_url,
      @JsonKey(name: 'category_description')
      required final String category_description}) = _$CategoriesDataImpl;

  factory _CategoriesData.fromJson(Map<String, dynamic> json) =
      _$CategoriesDataImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'is_active')
  bool? get is_active; // Made nullable
  @override
  @JsonKey(name: 'category_name')
  String get category_name;
  @override
  @JsonKey(name: 'category_image_url')
  String get category_image_url;
  @override
  @JsonKey(name: 'category_description')
  String get category_description;

  /// Create a copy of CategoriesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesDataImplCopyWith<_$CategoriesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
