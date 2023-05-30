import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'get_code_salt_input.g.dart';

@JsonSerializable()
class GetCodeSaltInput {
  const GetCodeSaltInput(this.code);

  ///Base64 encoded contract code
  final String code;

  factory GetCodeSaltInput.fromJson(Map<String, dynamic> json) =>
      _$GetCodeSaltInputFromJson(json);

  Map<String, dynamic> toJson() => _$GetCodeSaltInputToJson(this);
}
