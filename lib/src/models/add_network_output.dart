import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'add_network_output.g.dart';

@JsonSerializable()
class AddNetworkOutput {
  const AddNetworkOutput(this.network);

  final Network? network;

  factory AddNetworkOutput.fromJson(Map<String, dynamic> json) =>
      _$AddNetworkOutputFromJson(json);

  Map<String, dynamic> toJson() => _$AddNetworkOutputToJson(this);
}
