import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'send_external_message_delayed_output.g.dart';

@JsonSerializable()
class SendExternalMessageDelayedOutput {
  const SendExternalMessageDelayedOutput(this.message);

  ///External message info
  final DelayedMessage message;

  factory SendExternalMessageDelayedOutput.fromJson(
          Map<String, dynamic> json) =>
      _$SendExternalMessageDelayedOutputFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SendExternalMessageDelayedOutputToJson(this);
}
