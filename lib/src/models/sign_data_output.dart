import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'sign_data_output.g.dart';

@JsonSerializable()
class SignDataOutput {
  const SignDataOutput(
      this.dataHash, this.signature, this.signatureHex, this.signatureParts);

  ///Hex encoded data hash
  final String dataHash;

  ///Base64 encoded signature bytes (data is guaranteed to be 64 bytes long)
  final String signature;

  ///Hex encoded signature bytes (data is guaranteed to be 64 bytes long)
  final String signatureHex;

  ///Same signature, but split into two uint256 parts
  final SignDataOutputSignatureParts signatureParts;

  factory SignDataOutput.fromJson(Map<String, dynamic> json) =>
      _$SignDataOutputFromJson(json);

  Map<String, dynamic> toJson() => _$SignDataOutputToJson(this);
}
