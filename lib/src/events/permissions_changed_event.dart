import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'permissions_changed_event.g.dart';

@JsonSerializable()
class PermissionsChangedEvent {
  const PermissionsChangedEvent(this.permissions);

  final PermissionsPartial permissions;

  factory PermissionsChangedEvent.fromJson(Map<String, dynamic> json) =>
      _$PermissionsChangedEventFromJson(json);

  Map<String, dynamic> toJson() => _$PermissionsChangedEventToJson(this);
}
