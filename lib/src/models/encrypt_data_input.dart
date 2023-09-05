import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'encrypt_data_input.g.dart';

@JsonSerializable()
class EncryptDataInput {
  const EncryptDataInput(
      this.publicKey, this.recipientPublicKeys, this.algorithm, this.data);

  ///The public key of the preferred account.
  ///It is the same publicKey as the `accountInteraction.publicKey`, but it must be explicitly provided
  final String publicKey;

  ///Public keys of recipients. Hex encoded
  final List<String> recipientPublicKeys;

  ///Encryption algorithm. Nonce will be generated for each recipient
  final String algorithm;

  ///Base64 encoded data
  final String data;

  factory EncryptDataInput.fromJson(Map<String, dynamic> json) =>
      _$EncryptDataInputFromJson(json);

  Map<String, dynamic> toJson() => _$EncryptDataInputToJson(this);
}
