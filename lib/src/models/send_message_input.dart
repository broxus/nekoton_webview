import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'send_message_input.g.dart';

@JsonSerializable()
class SendMessageInput {
  const SendMessageInput(this.sender, this.recipient, this.amount, this.bounce,
      this.payload, this.stateInit);

  ///Preferred wallet address.
  ///It is the same address as the `accountInteraction.address`, but it must be explicitly provided
  final String sender;

  ///Message destination address
  final String recipient;

  @JsonKey(
    fromJson: BigInt.tryParse,
    toJson: _bigIntToString,
  )
  final BigInt? amount;

  ///Whether to bounce message back on error
  final bool bounce;

  ///Optional function call
  final FunctionCall? payload;

  ///Optional base64 encoded TVC
  ///NOTE: If the selected contract do not support this, an error is returned
  final String? stateInit;

  factory SendMessageInput.fromJson(Map<String, dynamic> json) =>
      _$SendMessageInputFromJson(json);

  Map<String, dynamic> toJson() => _$SendMessageInputToJson(this);

  static String? _bigIntToString(BigInt? value) => value?.toString();
}
