import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'connected_event.g.dart';

@JsonSerializable()
class ConnectedEvent {
  const ConnectedEvent();

  factory ConnectedEvent.fromJson(Map<String, dynamic> json) =>
      _$ConnectedEventFromJson(json);

  Map<String, dynamic> toJson() => _$ConnectedEventToJson(this);
}
