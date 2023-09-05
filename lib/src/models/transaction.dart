import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'transaction.g.dart';

@JsonSerializable()
class Transaction {
  const Transaction(
      this.id,
      this.prevTransactionId,
      this.createdAt,
      this.aborted,
      this.exitCode,
      this.resultCode,
      this.origStatus,
      this.endStatus,
      this.totalFees,
      this.inMessage,
      this.outMessages);

  final TransactionId id;
  final TransactionId? prevTransactionId;
  final num createdAt;
  final bool aborted;
  final num? exitCode;
  final num? resultCode;
  final String origStatus;
  final String endStatus;
  final String totalFees;
  final Message inMessage;
  final List<Message> outMessages;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionToJson(this);
}
