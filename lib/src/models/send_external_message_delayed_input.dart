import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'send_external_message_delayed_input.g.dart';

@JsonSerializable()
class SendExternalMessageDelayedInput {
  const SendExternalMessageDelayedInput(
      this.publicKey, this.recipient, this.stateInit, this.payload);

  ///The public key of the preferred account.
  ///It is the same publicKey as the `accountInteraction.publicKey`, but it must be explicitly provided
  final String publicKey;

  ///Message destination address
  final String recipient;

  ///Optional base64 encoded `.tvc` file
  final String? stateInit;

  ///Function call
  final FunctionCall payload;

  factory SendExternalMessageDelayedInput.fromJson(Map<String, dynamic> json) =>
      _$SendExternalMessageDelayedInputFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SendExternalMessageDelayedInputToJson(this);
}
