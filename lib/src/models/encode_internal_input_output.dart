import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'encode_internal_input_output.g.dart';

@JsonSerializable()
class EncodeInternalInputOutput {
  const EncodeInternalInputOutput(this.boc);

  ///Base64 encoded message body BOC
  final String boc;

  factory EncodeInternalInputOutput.fromJson(Map<String, dynamic> json) =>
      _$EncodeInternalInputOutputFromJson(json);

  Map<String, dynamic> toJson() => _$EncodeInternalInputOutputToJson(this);
}
