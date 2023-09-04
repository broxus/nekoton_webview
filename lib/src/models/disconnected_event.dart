import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'disconnected_event.g.dart';

@JsonSerializable()
class DisconnectedEvent {
  const DisconnectedEvent(this.name, this.message);

  final String? name;
  final String? message;

  factory DisconnectedEvent.fromJson(Map<String, dynamic> json) =>
      _$DisconnectedEventFromJson(json);

  Map<String, dynamic> toJson() => _$DisconnectedEventToJson(this);
}
