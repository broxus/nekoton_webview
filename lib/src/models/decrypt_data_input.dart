import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'decrypt_data_input.g.dart';

@JsonSerializable()
class DecryptDataInput {
  const DecryptDataInput(this.encryptedData);

  ///Encrypted data. The recipient's public key must match the public key of the current account.
  final EncryptedData encryptedData;

  factory DecryptDataInput.fromJson(Map<String, dynamic> json) =>
      _$DecryptDataInputFromJson(json);

  Map<String, dynamic> toJson() => _$DecryptDataInputToJson(this);
}
