import 'package:freezed_annotation/freezed_annotation.dart';

import 'courseTopic_data.dart';

part 'courseTopic_response.freezed.dart';
part 'courseTopic_response.g.dart';

/// Categories API response
@Freezed()
class CourseTopicResponse with _$CourseTopicResponse {
  /// Factory constructor
  const factory CourseTopicResponse({
    required int code,
    required bool status,
    required String message,
    required CourseTopicData data,
  }) = _CourseTopicResponse;

  /// Factory for JSON deserialization
  factory CourseTopicResponse.fromJson(Map<String, dynamic> json) =>
      _$CourseTopicResponseFromJson(json);
}
