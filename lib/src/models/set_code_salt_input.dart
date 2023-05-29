import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'set_code_salt_input.g.dart';

@JsonSerializable()
class SetCodeSaltInput {
  const SetCodeSaltInput(this.code, this.salt);

  ///Base64 encoded contract code
  final String code;

  ///Base64 encoded salt (as BOC)
  final String salt;

  factory SetCodeSaltInput.fromJson(Map<String, dynamic> json) =>
      _$SetCodeSaltInputFromJson(json);

  Map<String, dynamic> toJson() => _$SetCodeSaltInputToJson(this);
}
