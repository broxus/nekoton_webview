import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'gql_socket_params.g.dart';

@JsonSerializable()
class GqlSocketParams {
  const GqlSocketParams(this.endpoints, this.latencyDetectionInterval,
      this.maxLatency, this.local);

  ///Path to graphql api endpoints
  final List<String> endpoints;

  ///Frequency of sync latency detection
  final num latencyDetectionInterval;

  ///Maximum value for the endpoint's blockchain data sync latency
  final num maxLatency;

  ///Gql node type
  final bool local;

  factory GqlSocketParams.fromJson(Map<String, dynamic> json) =>
      _$GqlSocketParamsFromJson(json);

  Map<String, dynamic> toJson() => _$GqlSocketParamsToJson(this);
}
