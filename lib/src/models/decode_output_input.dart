import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'decode_output_input.g.dart';

@JsonSerializable()
class DecodeOutputInput {
  const DecodeOutputInput(this.body, this.abi, this.method);

  ///Base64 encoded message body BOC
  final String body;

  ///Contract ABI
  final String abi;

  ///Specific method from specified contract ABI.
  ///When an array of method names is passed it will try to decode until first successful
  ///> Note! If **`method`** param was provided as string, it will assume that message body contains
  ///> specified function and this method will either return output or throw an exception. If you just want
  ///> to **_try_** to decode specified method, use **`['method']`**, in that case it will return null
  ///> if message body doesn't contain requested method.
  final Object method;

  factory DecodeOutputInput.fromJson(Map<String, dynamic> json) =>
      _$DecodeOutputInputFromJson(json);

  Map<String, dynamic> toJson() => _$DecodeOutputInputToJson(this);
}
