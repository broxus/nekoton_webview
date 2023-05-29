import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'encrypted_data.g.dart';

@JsonSerializable()
class EncryptedData {
  const EncryptedData(this.algorithm, this.sourcePublicKey,
      this.recipientPublicKey, this.data, this.nonce);

  final String algorithm;

  ///Hex encoded encryptor's public key
  final String sourcePublicKey;

  ///Hex encoded recipient public key
  final String recipientPublicKey;

  ///Base64 encoded data
  final String data;

  ///Base64 encoded nonce
  final String nonce;

  factory EncryptedData.fromJson(Map<String, dynamic> json) =>
      _$EncryptedDataFromJson(json);

  Map<String, dynamic> toJson() => _$EncryptedDataToJson(this);
}
