import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'delayed_message.g.dart';

@JsonSerializable()
class DelayedMessage {
  const DelayedMessage(this.hash, this.account, this.expireAt);

  ///External message hash
  final String hash;

  ///Destination account address (`sender` for `sendMessageDelayed`, `recipient` for `sendExternalMessageDelayed`)
  final String account;

  ///Message expiration timestamp
  final num expireAt;

  factory DelayedMessage.fromJson(Map<String, dynamic> json) =>
      _$DelayedMessageFromJson(json);

  Map<String, dynamic> toJson() => _$DelayedMessageToJson(this);
}
