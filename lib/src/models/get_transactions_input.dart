import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'get_transactions_input.g.dart';

@JsonSerializable()
class GetTransactionsInput {
  const GetTransactionsInput(this.address, this.continuation, this.limit);

  ///Contract address
  final String address;

  ///Id of the transaction from which to request the next batch
  final TransactionId? continuation;

  ///Optional limit. Values greater than 50 have no effect
  final num? limit;

  factory GetTransactionsInput.fromJson(Map<String, dynamic> json) =>
      _$GetTransactionsInputFromJson(json);

  Map<String, dynamic> toJson() => _$GetTransactionsInputToJson(this);
}
