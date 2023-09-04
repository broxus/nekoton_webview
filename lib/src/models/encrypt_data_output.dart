import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'encrypt_data_output.g.dart';

@JsonSerializable()
class EncryptDataOutput {
  const EncryptDataOutput(this.encryptedData);

  ///Encrypted data for each recipient public key
  final List<EncryptedData> encryptedData;

  factory EncryptDataOutput.fromJson(Map<String, dynamic> json) =>
      _$EncryptDataOutputFromJson(json);

  Map<String, dynamic> toJson() => _$EncryptDataOutputToJson(this);
}
