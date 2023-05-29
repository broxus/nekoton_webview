import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'send_external_message_output.g.dart';

@JsonSerializable()
class SendExternalMessageOutput {
  const SendExternalMessageOutput(this.transaction, this.output);

  ///Executed transaction
  final Transaction transaction;

  ///Parsed function call output
  final Map<String, Object?>? output;

  factory SendExternalMessageOutput.fromJson(Map<String, dynamic> json) =>
      _$SendExternalMessageOutputFromJson(json);

  Map<String, dynamic> toJson() => _$SendExternalMessageOutputToJson(this);
}
