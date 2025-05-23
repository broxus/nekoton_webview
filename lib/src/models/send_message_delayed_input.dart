import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'send_message_delayed_input.g.dart';

@JsonSerializable()
class SendMessageDelayedInput {
  const SendMessageDelayedInput(
      this.sender,
      this.recipient,
      this.amount,
      this.bounce,
      this.payload,
      this.stateInit,
      this.ignoredComputePhaseCodes,
      this.ignoredActionPhaseCodes);

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

  ///Optional compute phase error codes to be ignored during transaction tree simulation
  final List<IgnoreTransactionTreeSimulationError>? ignoredComputePhaseCodes;

  ///Optional action phase error codes to be ignored during transaction tree simulation
  final List<IgnoreTransactionTreeSimulationError>? ignoredActionPhaseCodes;

  factory SendMessageDelayedInput.fromJson(Map<String, dynamic> json) =>
      _$SendMessageDelayedInputFromJson(json);

  Map<String, dynamic> toJson() => _$SendMessageDelayedInputToJson(this);

  static String? _bigIntToString(BigInt? value) => value?.toString();
}
