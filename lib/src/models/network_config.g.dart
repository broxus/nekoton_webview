// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkConfig _$NetworkConfigFromJson(Map<String, dynamic> json) =>
    NetworkConfig(
      json['symbol'] as String?,
      json['explorerBaseUrl'] as String?,
      json['tokensManifestUrl'] as String?,
    );

Map<String, dynamic> _$NetworkConfigToJson(NetworkConfig instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'explorerBaseUrl': instance.explorerBaseUrl,
      'tokensManifestUrl': instance.tokensManifestUrl,
    };
