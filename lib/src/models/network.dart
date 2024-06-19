import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'network.g.dart';

@JsonSerializable()
class Network {
  const Network(this.name, this.description, this.connection, this.config);

  final String name;
  final NetworkDescription description;
  final Object connection;
  final NetworkConfig config;

  factory Network.fromJson(Map<String, dynamic> json) =>
      _$NetworkFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkToJson(this);
}
