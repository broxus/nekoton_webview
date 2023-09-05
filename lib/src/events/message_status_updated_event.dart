import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'message_status_updated_event.g.dart';

@JsonSerializable()
class MessageStatusUpdatedEvent {
  const MessageStatusUpdatedEvent(this.address, this.hash, this.transaction);

  ///Account address
  final String address;

  ///Message hash
  final String hash;

  ///If not null, the transaction of the delivered message. Otherwise, the message has expired.
  final Transaction? transaction;

  factory MessageStatusUpdatedEvent.fromJson(Map<String, dynamic> json) =>
      _$MessageStatusUpdatedEventFromJson(json);

  Map<String, dynamic> toJson() => _$MessageStatusUpdatedEventToJson(this);
}
