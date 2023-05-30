import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'verify_signature_output.g.dart';

@JsonSerializable()
class VerifySignatureOutput {
  const VerifySignatureOutput(this.isValid);

  ///Returns true if message was signed with this key
  final bool isValid;

  factory VerifySignatureOutput.fromJson(Map<String, dynamic> json) =>
      _$VerifySignatureOutputFromJson(json);

  Map<String, dynamic> toJson() => _$VerifySignatureOutputToJson(this);
}
