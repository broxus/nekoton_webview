import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'transactions_batch_info.g.dart';

@JsonSerializable()
class TransactionsBatchInfo {
  const TransactionsBatchInfo(this.minLt, this.maxLt, this.batchType);

  final String minLt;
  final String maxLt;
  final String batchType;

  factory TransactionsBatchInfo.fromJson(Map<String, dynamic> json) =>
      _$TransactionsBatchInfoFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionsBatchInfoToJson(this);
}
