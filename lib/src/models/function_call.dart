import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'function_call.g.dart';

@JsonSerializable()
class FunctionCall {
  const FunctionCall(this.abi, this.method, this.params);

  ///Contract ABI
  final String abi;

  ///Specific method from specified contract ABI
  final String method;

  ///Method arguments
  final Map<String, Object?> params;

  factory FunctionCall.fromJson(Map<String, dynamic> json) =>
      _$FunctionCallFromJson(json);

  Map<String, dynamic> toJson() => _$FunctionCallToJson(this);
}
