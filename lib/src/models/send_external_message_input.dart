import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'send_external_message_input.g.dart';

@JsonSerializable()
class SendExternalMessageInput {
  const SendExternalMessageInput(this.publicKey, this.recipient, this.stateInit,
      this.payload, this.local, this.executorParams);

  ///The public key of the preferred account.
  ///It is the same publicKey as the `accountInteraction.publicKey`, but it must be explicitly provided
  final String publicKey;

  ///Message destination address
  final String recipient;

  ///Optional base64 encoded `.tvc` file
  final String? stateInit;

  ///Function call
  final FunctionCall payload;

  ///Whether to only run it locally (false by default)
  ///Can be used as alternative `runLocal` method but with user signature
  final bool? local;

  ///Optional executor parameters used during local contract execution
  final SendExternalMessageInputExecutorParams? executorParams;

  factory SendExternalMessageInput.fromJson(Map<String, dynamic> json) =>
      _$SendExternalMessageInputFromJson(json);

  Map<String, dynamic> toJson() => _$SendExternalMessageInputToJson(this);
}
