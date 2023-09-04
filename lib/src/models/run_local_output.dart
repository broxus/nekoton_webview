import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'run_local_output.g.dart';

@JsonSerializable()
class RunLocalOutput {
  const RunLocalOutput(this.output, this.code);

  ///Execution output
  final Map<String, Object?>? output;

  ///TVM execution code
  final num code;

  factory RunLocalOutput.fromJson(Map<String, dynamic> json) =>
      _$RunLocalOutputFromJson(json);

  Map<String, dynamic> toJson() => _$RunLocalOutputToJson(this);
}
