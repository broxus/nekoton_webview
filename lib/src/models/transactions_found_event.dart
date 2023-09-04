import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'transactions_found_event.g.dart';

@JsonSerializable()
class TransactionsFoundEvent {
  const TransactionsFoundEvent(this.address, this.transactions, this.info);

  ///Contract address
  final String address;

  ///Guaranteed to be non-empty and ordered by descending lt
  final List<Transaction> transactions;

  ///Describes transactions lt rage
  final TransactionsBatchInfo info;

  factory TransactionsFoundEvent.fromJson(Map<String, dynamic> json) =>
      _$TransactionsFoundEventFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionsFoundEventToJson(this);
}
