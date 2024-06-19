import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'add_network.g.dart';

@JsonSerializable()
class AddNetwork {
  const AddNetwork(this.name, this.networkId, this.connection, this.config);

  final String name;
  final num networkId;
  final Object connection;
  final NetworkConfig? config;

  factory AddNetwork.fromJson(Map<String, dynamic> json) =>
      _$AddNetworkFromJson(json);

  Map<String, dynamic> toJson() => _$AddNetworkToJson(this);
}
