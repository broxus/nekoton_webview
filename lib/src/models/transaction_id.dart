import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'transaction_id.g.dart';

@JsonSerializable()
class TransactionId {
  const TransactionId(this.lt, this.hash);

  final String lt;
  final String hash;

  factory TransactionId.fromJson(Map<String, dynamic> json) =>
      _$TransactionIdFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionIdToJson(this);
}
