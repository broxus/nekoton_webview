import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'code_to_tvc_input.g.dart';

@JsonSerializable()
class CodeToTvcInput {
  const CodeToTvcInput(this.code);

  ///Base64 encoded contract code
  final String code;

  factory CodeToTvcInput.fromJson(Map<String, dynamic> json) =>
      _$CodeToTvcInputFromJson(json);

  Map<String, dynamic> toJson() => _$CodeToTvcInputToJson(this);
}
