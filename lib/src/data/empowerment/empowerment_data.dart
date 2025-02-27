import 'package:freezed_annotation/freezed_annotation.dart';

part 'empowerment_data.freezed.dart';
part 'empowerment_data.g.dart';

/// Categories data
@Freezed(fromJson: true)
class EmpowermentData with _$EmpowermentData {
  /// Factory constructor for CategoriesData
  const factory EmpowermentData({
    required String id,
    @JsonKey(name: 'is_active') required bool? is_active,
    @JsonKey(name: 'course_name') required String course_name,
    @JsonKey(name: 'course_image_url') required String course_image_url,
    @JsonKey(name: 'course_description') required String course_description,
    @JsonKey(name: 'category_id') required String category_id,
    @JsonKey(name: 'trainer_id') required String trainer_id,
  }) = _EmpowermentData;

  /// Factory constructor for JSON deserialization
  factory EmpowermentData.fromJson(Map<String, dynamic> json) =>
      _$EmpowermentDataFromJson(json);
}
