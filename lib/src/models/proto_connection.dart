import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'proto_connection.g.dart';

@JsonSerializable()
class ProtoConnection {
  const ProtoConnection(this.type, this.data);

  final String type;
  final dynamic data;

  factory ProtoConnection.fromJson(Map<String, dynamic> json) =>
      _$ProtoConnectionFromJson(json);

  Map<String, dynamic> toJson() => _$ProtoConnectionToJson(this);
}
