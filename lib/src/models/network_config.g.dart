// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkConfig _$NetworkConfigFromJson(Map<String, dynamic> json) =>
    NetworkConfig(
      json['symbol'] as String?,
      json['decimals'] as num?,
      json['explorerBaseUrl'] as String?,
      json['tokensManifestUrl'] as String?,
    );

Map<String, dynamic> _$NetworkConfigToJson(NetworkConfig instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'decimals': instance.decimals,
      'explorerBaseUrl': instance.explorerBaseUrl,
      'tokensManifestUrl': instance.tokensManifestUrl,
    };
