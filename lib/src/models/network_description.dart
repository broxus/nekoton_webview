import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'network_description.g.dart';

@JsonSerializable()
class NetworkDescription {
  const NetworkDescription(this.globalId, this.capabilities, this.signatureId);

  final num globalId;
  final String capabilities;
  final num? signatureId;

  factory NetworkDescription.fromJson(Map<String, dynamic> json) =>
      _$NetworkDescriptionFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkDescriptionToJson(this);
}
