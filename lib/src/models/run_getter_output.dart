import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'run_getter_output.g.dart';

@JsonSerializable()
class RunGetterOutput {
  const RunGetterOutput(this.output, this.code);

  ///Execution output
  final Map<String, Object?>? output;

  ///TVM execution code
  final num code;

  factory RunGetterOutput.fromJson(Map<String, dynamic> json) =>
      _$RunGetterOutputFromJson(json);

  Map<String, dynamic> toJson() => _$RunGetterOutputToJson(this);
}
