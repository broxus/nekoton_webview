import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'network_changed_event.g.dart';

@JsonSerializable()
class NetworkChangedEvent {
  const NetworkChangedEvent(this.selectedConnection, this.networkId);

  ///Network group name
  final String selectedConnection;

  ///Numeric network id
  final num networkId;

  factory NetworkChangedEvent.fromJson(Map<String, dynamic> json) =>
      _$NetworkChangedEventFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkChangedEventToJson(this);
}
