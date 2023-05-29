import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'sign_data_input.g.dart';

@JsonSerializable()
class SignDataInput {
  const SignDataInput(this.publicKey, this.data, this.withSignatureId);

  ///The public key of the preferred account.
  ///It is the same publicKey as the `accountInteraction.publicKey`, but it must be explicitly provided
  final String publicKey;

  ///Base64 encoded arbitrary bytes
  final String data;

  ///Whether to use the signature id for signing (true by default).
  ///- If `true`, uses the signature id of the selected network (if the capability is enabled).
  ///- If `false`, forces signature check to ignore any signature id.
  ///- If `number`, uses the specified number as a signature id.
  final Object? withSignatureId;

  factory SignDataInput.fromJson(Map<String, dynamic> json) =>
      _$SignDataInputFromJson(json);

  Map<String, dynamic> toJson() => _$SignDataInputToJson(this);
}
