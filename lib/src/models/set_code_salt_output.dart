import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'set_code_salt_output.g.dart';

@JsonSerializable()
class SetCodeSaltOutput {
  const SetCodeSaltOutput(this.code, this.hash);

  ///Base64 encoded contract code with salt
  final String code;

  ///Hex encoded cell hash
  final String hash;

  factory SetCodeSaltOutput.fromJson(Map<String, dynamic> json) =>
      _$SetCodeSaltOutputFromJson(json);

  Map<String, dynamic> toJson() => _$SetCodeSaltOutputToJson(this);
}
