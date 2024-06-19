import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'jrpc_socket_params.g.dart';

@JsonSerializable()
class JrpcSocketParams {
  const JrpcSocketParams(this.endpoint);

  ///Path to jrpc api endpoint
  final String endpoint;

  factory JrpcSocketParams.fromJson(Map<String, dynamic> json) =>
      _$JrpcSocketParamsFromJson(json);

  Map<String, dynamic> toJson() => _$JrpcSocketParamsToJson(this);
}
