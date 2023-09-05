import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'gen_timings.g.dart';

@JsonSerializable()
class GenTimings {
  const GenTimings(this.genLt, this.genUtime);

  final String genLt;
  final num genUtime;

  factory GenTimings.fromJson(Map<String, dynamic> json) =>
      _$GenTimingsFromJson(json);

  Map<String, dynamic> toJson() => _$GenTimingsToJson(this);
}
