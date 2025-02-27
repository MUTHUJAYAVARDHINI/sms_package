import 'package:freezed_annotation/freezed_annotation.dart';
import 'empowerment_data.dart';

part 'empowerment_response.freezed.dart';
part 'empowerment_response.g.dart';
/// Categories API response
@Freezed()
class EmpowermentResponse with _$EmpowermentResponse {
  /// Factory constructor
  const factory EmpowermentResponse({
    required int code,
    required bool status,
    required String message,
    required List<EmpowermentData> data,
  }) = _EmpowermentResponse;

  /// Factory for JSON deserialization
  factory EmpowermentResponse.fromJson(Map<String, dynamic> json) =>
      _$EmpowermentResponseFromJson(json);
}
