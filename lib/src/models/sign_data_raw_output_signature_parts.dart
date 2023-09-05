import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'sign_data_raw_output_signature_parts.g.dart';

@JsonSerializable()
class SignDataRawOutputSignatureParts {
  const SignDataRawOutputSignatureParts(this.high, this.low);

  ///High 32 bytes of the signature as uint256
  final String high;

  ///Low 32 bytes of the signature as uint256
  final String low;

  factory SignDataRawOutputSignatureParts.fromJson(Map<String, dynamic> json) =>
      _$SignDataRawOutputSignaturePartsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SignDataRawOutputSignaturePartsToJson(this);
}
