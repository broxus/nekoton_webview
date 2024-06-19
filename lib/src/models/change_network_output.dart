import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'change_network_output.g.dart';

@JsonSerializable()
class ChangeNetworkOutput {
  const ChangeNetworkOutput(this.network);

  final Network? network;

  factory ChangeNetworkOutput.fromJson(Map<String, dynamic> json) =>
      _$ChangeNetworkOutputFromJson(json);

  Map<String, dynamic> toJson() => _$ChangeNetworkOutputToJson(this);
}
