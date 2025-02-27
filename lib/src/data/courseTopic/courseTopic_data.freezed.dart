// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courseTopic_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseTopicData _$CourseTopicDataFromJson(Map<String, dynamic> json) {
  return _CourseTopicData.fromJson(json);
}

/// @nodoc
mixin _$CourseTopicData {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get is_active => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_deleted')
  bool? get is_deleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_name')
  String get category_name => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_image_url')
  String get category_image_url => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_description')
  String get category_description => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  String get category_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'trainer_id')
  String get trainer_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deletedAt')
  String? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this CourseTopicData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseTopicData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseTopicDataCopyWith<CourseTopicData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseTopicDataCopyWith<$Res> {
  factory $CourseTopicDataCopyWith(
          CourseTopicData value, $Res Function(CourseTopicData) then) =
      _$CourseTopicDataCopyWithImpl<$Res, CourseTopicData>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'is_active') bool? is_active,
      @JsonKey(name: 'is_deleted') bool? is_deleted,
      @JsonKey(name: 'course_name') String category_name,
      @JsonKey(name: 'course_image_url') String category_image_url,
      @JsonKey(name: 'course_description') String category_description,
      @JsonKey(name: 'category_id') String category_id,
      @JsonKey(name: 'trainer_id') String trainer_id,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt,
      @JsonKey(name: 'deletedAt') String? deletedAt});
}

/// @nodoc
class _$CourseTopicDataCopyWithImpl<$Res, $Val extends CourseTopicData>
    implements $CourseTopicDataCopyWith<$Res> {
  _$CourseTopicDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseTopicData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? is_active = freezed,
    Object? is_deleted = freezed,
    Object? category_name = null,
    Object? category_image_url = null,
    Object? category_description = null,
    Object? category_id = null,
    Object? trainer_id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
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
      is_deleted: freezed == is_deleted
          ? _value.is_deleted
          : is_deleted // ignore: cast_nullable_to_non_nullable
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
      category_id: null == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as String,
      trainer_id: null == trainer_id
          ? _value.trainer_id
          : trainer_id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseTopicDataImplCopyWith<$Res>
    implements $CourseTopicDataCopyWith<$Res> {
  factory _$$CourseTopicDataImplCopyWith(_$CourseTopicDataImpl value,
          $Res Function(_$CourseTopicDataImpl) then) =
      __$$CourseTopicDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'is_active') bool? is_active,
      @JsonKey(name: 'is_deleted') bool? is_deleted,
      @JsonKey(name: 'course_name') String category_name,
      @JsonKey(name: 'course_image_url') String category_image_url,
      @JsonKey(name: 'course_description') String category_description,
      @JsonKey(name: 'category_id') String category_id,
      @JsonKey(name: 'trainer_id') String trainer_id,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt,
      @JsonKey(name: 'deletedAt') String? deletedAt});
}

/// @nodoc
class __$$CourseTopicDataImplCopyWithImpl<$Res>
    extends _$CourseTopicDataCopyWithImpl<$Res, _$CourseTopicDataImpl>
    implements _$$CourseTopicDataImplCopyWith<$Res> {
  __$$CourseTopicDataImplCopyWithImpl(
      _$CourseTopicDataImpl _value, $Res Function(_$CourseTopicDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseTopicData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? is_active = freezed,
    Object? is_deleted = freezed,
    Object? category_name = null,
    Object? category_image_url = null,
    Object? category_description = null,
    Object? category_id = null,
    Object? trainer_id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_$CourseTopicDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      is_active: freezed == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_deleted: freezed == is_deleted
          ? _value.is_deleted
          : is_deleted // ignore: cast_nullable_to_non_nullable
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
      category_id: null == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as String,
      trainer_id: null == trainer_id
          ? _value.trainer_id
          : trainer_id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseTopicDataImpl implements _CourseTopicData {
  const _$CourseTopicDataImpl(
      {required this.id,
      @JsonKey(name: 'is_active') required this.is_active,
      @JsonKey(name: 'is_deleted') required this.is_deleted,
      @JsonKey(name: 'course_name') required this.category_name,
      @JsonKey(name: 'course_image_url') required this.category_image_url,
      @JsonKey(name: 'course_description') required this.category_description,
      @JsonKey(name: 'category_id') required this.category_id,
      @JsonKey(name: 'trainer_id') required this.trainer_id,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt,
      @JsonKey(name: 'deletedAt') required this.deletedAt});

  factory _$CourseTopicDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseTopicDataImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'is_active')
  final bool? is_active;
  @override
  @JsonKey(name: 'is_deleted')
  final bool? is_deleted;
  @override
  @JsonKey(name: 'course_name')
  final String category_name;
  @override
  @JsonKey(name: 'course_image_url')
  final String category_image_url;
  @override
  @JsonKey(name: 'course_description')
  final String category_description;
  @override
  @JsonKey(name: 'category_id')
  final String category_id;
  @override
  @JsonKey(name: 'trainer_id')
  final String trainer_id;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @override
  @JsonKey(name: 'deletedAt')
  final String? deletedAt;

  @override
  String toString() {
    return 'CourseTopicData(id: $id, is_active: $is_active, is_deleted: $is_deleted, category_name: $category_name, category_image_url: $category_image_url, category_description: $category_description, category_id: $category_id, trainer_id: $trainer_id, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTopicDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.is_active, is_active) ||
                other.is_active == is_active) &&
            (identical(other.is_deleted, is_deleted) ||
                other.is_deleted == is_deleted) &&
            (identical(other.category_name, category_name) ||
                other.category_name == category_name) &&
            (identical(other.category_image_url, category_image_url) ||
                other.category_image_url == category_image_url) &&
            (identical(other.category_description, category_description) ||
                other.category_description == category_description) &&
            (identical(other.category_id, category_id) ||
                other.category_id == category_id) &&
            (identical(other.trainer_id, trainer_id) ||
                other.trainer_id == trainer_id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      is_active,
      is_deleted,
      category_name,
      category_image_url,
      category_description,
      category_id,
      trainer_id,
      createdAt,
      updatedAt,
      deletedAt);

  /// Create a copy of CourseTopicData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTopicDataImplCopyWith<_$CourseTopicDataImpl> get copyWith =>
      __$$CourseTopicDataImplCopyWithImpl<_$CourseTopicDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseTopicDataImplToJson(
      this,
    );
  }
}

abstract class _CourseTopicData implements CourseTopicData {
  const factory _CourseTopicData(
          {required final String id,
          @JsonKey(name: 'is_active') required final bool? is_active,
          @JsonKey(name: 'is_deleted') required final bool? is_deleted,
          @JsonKey(name: 'course_name') required final String category_name,
          @JsonKey(name: 'course_image_url')
          required final String category_image_url,
          @JsonKey(name: 'course_description')
          required final String category_description,
          @JsonKey(name: 'category_id') required final String category_id,
          @JsonKey(name: 'trainer_id') required final String trainer_id,
          @JsonKey(name: 'createdAt') required final String createdAt,
          @JsonKey(name: 'updatedAt') required final String updatedAt,
          @JsonKey(name: 'deletedAt') required final String? deletedAt}) =
      _$CourseTopicDataImpl;

  factory _CourseTopicData.fromJson(Map<String, dynamic> json) =
      _$CourseTopicDataImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'is_active')
  bool? get is_active;
  @override
  @JsonKey(name: 'is_deleted')
  bool? get is_deleted;
  @override
  @JsonKey(name: 'course_name')
  String get category_name;
  @override
  @JsonKey(name: 'course_image_url')
  String get category_image_url;
  @override
  @JsonKey(name: 'course_description')
  String get category_description;
  @override
  @JsonKey(name: 'category_id')
  String get category_id;
  @override
  @JsonKey(name: 'trainer_id')
  String get trainer_id;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String get updatedAt;
  @override
  @JsonKey(name: 'deletedAt')
  String? get deletedAt;

  /// Create a copy of CourseTopicData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseTopicDataImplCopyWith<_$CourseTopicDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
