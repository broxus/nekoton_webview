import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'decode_input_output.g.dart';

@JsonSerializable()
class DecodeInputOutput {
  const DecodeInputOutput(this.method, this.input);

  ///Decoded method name
  final String method;

  ///Decoded function arguments
  final Map<String, Object?> input;

  factory DecodeInputOutput.fromJson(Map<String, dynamic> json) =>
      _$DecodeInputOutputFromJson(json);

  Map<String, dynamic> toJson() => _$DecodeInputOutputToJson(this);
}
