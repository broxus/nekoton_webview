import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'get_code_salt_output.g.dart';

@JsonSerializable()
class GetCodeSaltOutput {
  const GetCodeSaltOutput(this.salt);

  ///Base64 encoded salt (as BOC)
  final String? salt;

  factory GetCodeSaltOutput.fromJson(Map<String, dynamic> json) =>
      _$GetCodeSaltOutputFromJson(json);

  Map<String, dynamic> toJson() => _$GetCodeSaltOutputToJson(this);
}
