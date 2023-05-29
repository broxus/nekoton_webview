import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'code_to_tvc_output.g.dart';

@JsonSerializable()
class CodeToTvcOutput {
  const CodeToTvcOutput(this.tvc, this.hash);

  ///Base64 encoded state init
  final String tvc;

  ///Hex encoded cell hash
  final String hash;

  factory CodeToTvcOutput.fromJson(Map<String, dynamic> json) =>
      _$CodeToTvcOutputFromJson(json);

  Map<String, dynamic> toJson() => _$CodeToTvcOutputToJson(this);
}
