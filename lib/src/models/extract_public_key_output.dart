import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'extract_public_key_output.g.dart';

@JsonSerializable()
class ExtractPublicKeyOutput {
  const ExtractPublicKeyOutput(this.publicKey);

  ///Hex encoded public key
  final String publicKey;

  factory ExtractPublicKeyOutput.fromJson(Map<String, dynamic> json) =>
      _$ExtractPublicKeyOutputFromJson(json);

  Map<String, dynamic> toJson() => _$ExtractPublicKeyOutputToJson(this);
}
