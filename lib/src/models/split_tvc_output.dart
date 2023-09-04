import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'split_tvc_output.g.dart';

@JsonSerializable()
class SplitTvcOutput {
  const SplitTvcOutput(this.data, this.code);

  ///Base64 encoded init data
  final String? data;

  ///Base64 encoded contract code
  final String? code;

  factory SplitTvcOutput.fromJson(Map<String, dynamic> json) =>
      _$SplitTvcOutputFromJson(json);

  Map<String, dynamic> toJson() => _$SplitTvcOutputToJson(this);
}
