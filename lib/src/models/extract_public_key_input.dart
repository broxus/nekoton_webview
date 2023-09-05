import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'extract_public_key_input.g.dart';

@JsonSerializable()
class ExtractPublicKeyInput {
  const ExtractPublicKeyInput(this.boc);

  ///Base64 encoded account state
  final String boc;

  factory ExtractPublicKeyInput.fromJson(Map<String, dynamic> json) =>
      _$ExtractPublicKeyInputFromJson(json);

  Map<String, dynamic> toJson() => _$ExtractPublicKeyInputToJson(this);
}
