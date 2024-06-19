import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'change_network_input.g.dart';

@JsonSerializable()
class ChangeNetworkInput {
  const ChangeNetworkInput(this.networkId);

  final num networkId;

  factory ChangeNetworkInput.fromJson(Map<String, dynamic> json) =>
      _$ChangeNetworkInputFromJson(json);

  Map<String, dynamic> toJson() => _$ChangeNetworkInputToJson(this);
}
