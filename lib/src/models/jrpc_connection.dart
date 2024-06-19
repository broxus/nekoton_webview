import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'jrpc_connection.g.dart';

@JsonSerializable()
class JrpcConnection {
  const JrpcConnection(this.type, this.data);

  final String type;
  final JrpcSocketParams data;

  factory JrpcConnection.fromJson(Map<String, dynamic> json) =>
      _$JrpcConnectionFromJson(json);

  Map<String, dynamic> toJson() => _$JrpcConnectionToJson(this);
}
