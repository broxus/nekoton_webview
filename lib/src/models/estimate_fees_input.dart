import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'estimate_fees_input.g.dart';

@JsonSerializable()
class EstimateFeesInput {
  const EstimateFeesInput(
      this.sender, this.recipient, this.amount, this.payload, this.stateInit);

  ///This wallet will be used to send the message.
  ///It is the same address as the `accountInteraction.address`, but it must be explicitly provided
  final String sender;

  ///Message destination address
  final String recipient;

  @JsonKey(
    fromJson: BigInt.tryParse,
    toJson: _bigIntToString,
  )
  final BigInt? amount;

  ///Optional function call
  final FunctionCall? payload;

  ///Optional base64 encoded TVC
  ///NOTE: If the selected contract do not support this, an error is returned
  final String? stateInit;

  factory EstimateFeesInput.fromJson(Map<String, dynamic> json) =>
      _$EstimateFeesInputFromJson(json);

  Map<String, dynamic> toJson() => _$EstimateFeesInputToJson(this);

  static String? _bigIntToString(BigInt? value) => value?.toString();
}
