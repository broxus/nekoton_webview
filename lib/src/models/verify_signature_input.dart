import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'verify_signature_input.g.dart';

@JsonSerializable()
class VerifySignatureInput {
  const VerifySignatureInput(
      this.publicKey, this.dataHash, this.signature, this.withSignatureId);

  ///The public key of the preferred account.
  ///It is the same publicKey as the `accountInteraction.publicKey`, but it must be explicitly provided
  final String publicKey;

  ///Base64 or hex encoded arbitrary bytes hash (data must be 32 bytes long)
  final String dataHash;

  ///Base64 or hex encoded signature bytes (data must be 64 bytes long)
  final String signature;

  ///Whether to use the signature id during verification (true by default).
  ///- If `true`, uses the signature id of the selected network (if the capability is enabled).
  ///- If `false`, forces signature check to ignore any signature id.
  ///- If `number`, uses the specified number as a signature id.
  final Object? withSignatureId;

  factory VerifySignatureInput.fromJson(Map<String, dynamic> json) =>
      _$VerifySignatureInputFromJson(json);

  Map<String, dynamic> toJson() => _$VerifySignatureInputToJson(this);
}
