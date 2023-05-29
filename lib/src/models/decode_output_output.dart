import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'decode_output_output.g.dart';

@JsonSerializable()
class DecodeOutputOutput {
  const DecodeOutputOutput(this.method, this.output);

  ///Decoded method name
  final String method;

  ///Decoded function returned value
  final Map<String, Object?> output;

  factory DecodeOutputOutput.fromJson(Map<String, dynamic> json) =>
      _$DecodeOutputOutputFromJson(json);

  Map<String, dynamic> toJson() => _$DecodeOutputOutputToJson(this);
}
