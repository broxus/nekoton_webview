import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'decrypt_data_output.g.dart';

@JsonSerializable()
class DecryptDataOutput {
  const DecryptDataOutput(this.data);

  ///Base64 encoded decrypted data
  final String data;

  factory DecryptDataOutput.fromJson(Map<String, dynamic> json) =>
      _$DecryptDataOutputFromJson(json);

  Map<String, dynamic> toJson() => _$DecryptDataOutputToJson(this);
}
