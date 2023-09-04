import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'find_transaction_output.g.dart';

@JsonSerializable()
class FindTransactionOutput {
  const FindTransactionOutput(this.transaction);

  ///Transaction
  final Transaction? transaction;

  factory FindTransactionOutput.fromJson(Map<String, dynamic> json) =>
      _$FindTransactionOutputFromJson(json);

  Map<String, dynamic> toJson() => _$FindTransactionOutputToJson(this);
}
