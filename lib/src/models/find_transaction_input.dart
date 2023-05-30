import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'find_transaction_input.g.dart';

@JsonSerializable()
class FindTransactionInput {
  const FindTransactionInput(this.inMessageHash);

  ///Hex encoded incoming message hash
  final String? inMessageHash;

  factory FindTransactionInput.fromJson(Map<String, dynamic> json) =>
      _$FindTransactionInputFromJson(json);

  Map<String, dynamic> toJson() => _$FindTransactionInputToJson(this);
}
