import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'decode_transaction_events_input.g.dart';

@JsonSerializable()
class DecodeTransactionEventsInput {
  const DecodeTransactionEventsInput(this.transaction, this.abi);

  ///Transaction with the function call
  final Transaction transaction;

  ///Contract ABI
  final String abi;

  factory DecodeTransactionEventsInput.fromJson(Map<String, dynamic> json) =>
      _$DecodeTransactionEventsInputFromJson(json);

  Map<String, dynamic> toJson() => _$DecodeTransactionEventsInputToJson(this);
}
