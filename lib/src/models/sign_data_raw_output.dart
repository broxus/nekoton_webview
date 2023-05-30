import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'sign_data_raw_output.g.dart';

@JsonSerializable()
class SignDataRawOutput {
  const SignDataRawOutput(
      this.signature, this.signatureHex, this.signatureParts);

  ///Base64 encoded signature bytes (data is guaranteed to be 64 bytes long)
  final String signature;

  ///Hex encoded signature bytes (data is guaranteed to be 64 bytes long)
  final String signatureHex;

  ///Same signature, but split into two uint256 parts
  final SignDataRawOutputSignatureParts signatureParts;

  factory SignDataRawOutput.fromJson(Map<String, dynamic> json) =>
      _$SignDataRawOutputFromJson(json);

  Map<String, dynamic> toJson() => _$SignDataRawOutputToJson(this);
}
