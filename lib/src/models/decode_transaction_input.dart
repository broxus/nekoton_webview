import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'decode_transaction_input.g.dart';

@JsonSerializable()
class DecodeTransactionInput {
  const DecodeTransactionInput(this.transaction, this.abi, this.method);

  ///Transaction with the function call
  final Transaction transaction;

  ///Contract ABI
  final String abi;

  ///Specific method from specified contract ABI.
  ///When an array of method names is passed it will try to decode until first successful.
  ///> Note! If **`method`** param was provided as string, it will assume that transaction contains
  ///> specified call and this method will either return output or throw an exception. If you just want
  ///> to **_try_** to decode specified method, use **`['method']`**, in that case it will return null
  ///> if transaction doesn't contain requested method.
  final Object method;

  factory DecodeTransactionInput.fromJson(Map<String, dynamic> json) =>
      _$DecodeTransactionInputFromJson(json);

  Map<String, dynamic> toJson() => _$DecodeTransactionInputToJson(this);
}
