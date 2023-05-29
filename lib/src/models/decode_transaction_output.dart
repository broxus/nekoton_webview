import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'decode_transaction_output.g.dart';

@JsonSerializable()
class DecodeTransactionOutput {
  const DecodeTransactionOutput(this.method, this.input, this.output);

  ///Decoded method name
  final String method;

  ///Decoded function arguments
  final Map<String, Object?> input;

  ///Decoded function returned value
  final Map<String, Object?> output;

  factory DecodeTransactionOutput.fromJson(Map<String, dynamic> json) =>
      _$DecodeTransactionOutputFromJson(json);

  Map<String, dynamic> toJson() => _$DecodeTransactionOutputToJson(this);
}
