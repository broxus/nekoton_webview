import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'get_transactions_output.g.dart';

@JsonSerializable()
class GetTransactionsOutput {
  const GetTransactionsOutput(this.transactions, this.continuation, this.info);

  ///Transactions list in descending order (from latest lt to the oldest)
  final List<Transaction> transactions;

  ///Previous transaction id of the last transaction in result. Can be used to continue transactions batch
  final TransactionId? continuation;

  ///Describes transactions lt rage (none if empty `transactions` array)
  final TransactionsBatchInfo? info;

  factory GetTransactionsOutput.fromJson(Map<String, dynamic> json) =>
      _$GetTransactionsOutputFromJson(json);

  Map<String, dynamic> toJson() => _$GetTransactionsOutputToJson(this);
}
