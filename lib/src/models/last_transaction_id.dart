import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'last_transaction_id.g.dart';

@JsonSerializable()
class LastTransactionId {
  const LastTransactionId(this.isExact, this.lt, this.hash);

  final bool isExact;
  final String lt;
  final String? hash;

  factory LastTransactionId.fromJson(Map<String, dynamic> json) =>
      _$LastTransactionIdFromJson(json);

  Map<String, dynamic> toJson() => _$LastTransactionIdToJson(this);
}
