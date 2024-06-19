import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'add_network_input.g.dart';

@JsonSerializable()
class AddNetworkInput {
  const AddNetworkInput(this.network, this.switchNetwork);

  ///Network info
  final AddNetwork network;

  ///Whether to switch to the added network (false by default)
  final bool? switchNetwork;

  factory AddNetworkInput.fromJson(Map<String, dynamic> json) =>
      _$AddNetworkInputFromJson(json);

  Map<String, dynamic> toJson() => _$AddNetworkInputToJson(this);
}
