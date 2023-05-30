import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'contract_updates_subscription_partial.g.dart';

@JsonSerializable()
class ContractUpdatesSubscriptionPartial {
  const ContractUpdatesSubscriptionPartial(this.state, this.transactions);

  ///Whether to listen contract state updates
  final bool? state;

  ///Whether to listen new contract transactions
  final bool? transactions;

  factory ContractUpdatesSubscriptionPartial.fromJson(
          Map<String, dynamic> json) =>
      _$ContractUpdatesSubscriptionPartialFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ContractUpdatesSubscriptionPartialToJson(this);
}
