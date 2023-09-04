import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'execute_local_output.g.dart';

@JsonSerializable()
class ExecuteLocalOutput {
  const ExecuteLocalOutput(this.transaction, this.newState, this.output);

  ///Executed transaction
  final Transaction transaction;

  ///Contract state after the executed transaction
  final FullContractState? newState;

  ///Parsed function call output
  final Map<String, Object?>? output;

  factory ExecuteLocalOutput.fromJson(Map<String, dynamic> json) =>
      _$ExecuteLocalOutputFromJson(json);

  Map<String, dynamic> toJson() => _$ExecuteLocalOutputToJson(this);
}
