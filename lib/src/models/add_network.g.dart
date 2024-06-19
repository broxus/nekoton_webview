// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_network.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddNetwork _$AddNetworkFromJson(Map<String, dynamic> json) => AddNetwork(
      json['name'] as String,
      json['networkId'] as num,
      json['connection'] as Object,
      json['config'] == null
          ? null
          : NetworkConfig.fromJson(json['config'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddNetworkToJson(AddNetwork instance) =>
    <String, dynamic>{
      'name': instance.name,
      'networkId': instance.networkId,
      'connection': instance.connection,
      'config': instance.config?.toJson(),
    };
