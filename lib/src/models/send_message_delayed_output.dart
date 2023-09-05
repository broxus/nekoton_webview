import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'send_message_delayed_output.g.dart';

@JsonSerializable()
class SendMessageDelayedOutput {
  const SendMessageDelayedOutput(this.message);

  ///External message info
  final DelayedMessage message;

  factory SendMessageDelayedOutput.fromJson(Map<String, dynamic> json) =>
      _$SendMessageDelayedOutputFromJson(json);

  Map<String, dynamic> toJson() => _$SendMessageDelayedOutputToJson(this);
}
