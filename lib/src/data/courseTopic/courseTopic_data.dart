import 'package:freezed_annotation/freezed_annotation.dart';

part 'courseTopic_data.freezed.dart';
part 'courseTopic_data.g.dart';

/// Categories data
@Freezed(fromJson: true)
class CourseTopicData with _$CourseTopicData {
  /// Factory constructor for CategoriesData
  const factory CourseTopicData({
    required String id,
    @JsonKey(name: 'is_active') required bool? is_active,
    @JsonKey(name: 'is_deleted') required bool? is_deleted,
    @JsonKey(name: 'course_name') required String category_name,
    @JsonKey(name: 'course_image_url') required String category_image_url,
    @JsonKey(name: 'course_description') required String category_description,
    @JsonKey(name: 'category_id') required String category_id,
    @JsonKey(name: 'trainer_id') required String trainer_id,
    @JsonKey(name: 'createdAt') required String createdAt,
    @JsonKey(name: 'updatedAt') required String updatedAt,
    @JsonKey(name: 'deletedAt') required String? deletedAt,
  }) = _CourseTopicData;

  /// Factory constructor for JSON deserialization
  factory CourseTopicData.fromJson(Map<String, dynamic> json) =>
      _$CourseTopicDataFromJson(json);
}
