import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'get_transaction_output.g.dart';

@JsonSerializable()
class GetTransactionOutput {
  const GetTransactionOutput(this.transaction);

  ///Transaction
  final Transaction? transaction;

  factory GetTransactionOutput.fromJson(Map<String, dynamic> json) =>
      _$GetTransactionOutputFromJson(json);

  Map<String, dynamic> toJson() => _$GetTransactionOutputToJson(this);
}
