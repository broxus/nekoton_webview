import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'network_config.g.dart';

@JsonSerializable()
class NetworkConfig {
  const NetworkConfig(
      this.symbol, this.decimals, this.explorerBaseUrl, this.tokensManifestUrl);

  final String? symbol;
  final num? decimals;
  final String? explorerBaseUrl;
  final String? tokensManifestUrl;

  factory NetworkConfig.fromJson(Map<String, dynamic> json) =>
      _$NetworkConfigFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkConfigToJson(this);
}
