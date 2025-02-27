// To parse this JSON data, do
//
//     final iPdata = iPdataFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'ip_data.freezed.dart';
part 'ip_data.g.dart';

IPdata iPdataFromJson(String str) => IPdata.fromJson(json.decode(str));

String iPdataToJson(IPdata data) => json.encode(data.toJson());

@freezed
class IPdata with _$IPdata {
  const factory IPdata({
    @JsonKey(name: "ip")
    String? ip,
    @JsonKey(name: "hostname")
    String? hostname,
    @JsonKey(name: "city")
    String? city,
    @JsonKey(name: "region")
    String? region,
    @JsonKey(name: "country")
    String? country,
    @JsonKey(name: "loc")
    String? loc,
    @JsonKey(name: "org")
    String? org,
    @JsonKey(name: "postal")
    String? postal,
    @JsonKey(name: "timezone")
    String? timezone,
    @JsonKey(name: "readme")
    String? readme,
  }) = _IPdata;

  factory IPdata.fromJson(Map<String, dynamic> json) => _$IPdataFromJson(json);
}
