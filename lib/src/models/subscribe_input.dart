import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'subscribe_input.g.dart';

@JsonSerializable()
class SubscribeInput {
  const SubscribeInput(this.address, this.subscriptions);

  ///Contract address
  final String address;

  ///Subscription changes
  final ContractUpdatesSubscriptionPartial subscriptions;

  factory SubscribeInput.fromJson(Map<String, dynamic> json) =>
      _$SubscribeInputFromJson(json);

  Map<String, dynamic> toJson() => _$SubscribeInputToJson(this);
}
