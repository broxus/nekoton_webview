import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'contract_updates_subscription.g.dart';

@JsonSerializable()
class ContractUpdatesSubscription {
  const ContractUpdatesSubscription(this.state, this.transactions);

  ///Whether to listen contract state updates
  final bool state;

  ///Whether to listen new contract transactions
  final bool transactions;

  factory ContractUpdatesSubscription.fromJson(Map<String, dynamic> json) =>
      _$ContractUpdatesSubscriptionFromJson(json);

  Map<String, dynamic> toJson() => _$ContractUpdatesSubscriptionToJson(this);
}
