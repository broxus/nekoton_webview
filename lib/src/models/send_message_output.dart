import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'send_message_output.g.dart';

@JsonSerializable()
class SendMessageOutput {
  const SendMessageOutput(this.transaction);

  ///Executed transaction
  final Transaction transaction;

  factory SendMessageOutput.fromJson(Map<String, dynamic> json) =>
      _$SendMessageOutputFromJson(json);

  Map<String, dynamic> toJson() => _$SendMessageOutputToJson(this);
}
