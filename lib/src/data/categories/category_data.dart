import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_data.freezed.dart';
part 'category_data.g.dart';

/// Categories data
@Freezed(fromJson: true)
class CategoriesData with _$CategoriesData {
  /// Factory constructor for CategoriesData
  const factory CategoriesData({
    required String id,
    @JsonKey(name: 'is_active') required bool? is_active, // Made nullable
    @JsonKey(name: 'category_name') required String category_name,
    @JsonKey(name: 'category_image_url') required String category_image_url,
    @JsonKey(name: 'category_description') required String category_description,
  }) = _CategoriesData;

  /// Factory constructor for JSON deserialization
  factory CategoriesData.fromJson(Map<String, dynamic> json) =>
      _$CategoriesDataFromJson(json);
}
