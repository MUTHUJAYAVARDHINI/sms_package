import 'package:freezed_annotation/freezed_annotation.dart';
import 'category_data.dart';

part 'category_response.freezed.dart';
part 'category_response.g.dart';

/// Categories API response
@Freezed()
class CategoriesResponse with _$CategoriesResponse {
  /// Factory constructor
  const factory CategoriesResponse({
    required int code,
    required bool status,
    required String message,
    required List<CategoriesData> data,
  }) = _CategoriesResponse;

  /// Factory for JSON deserialization
  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseFromJson(json);
}
