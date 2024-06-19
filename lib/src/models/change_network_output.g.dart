// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_network_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeNetworkOutput _$ChangeNetworkOutputFromJson(Map<String, dynamic> json) =>
    ChangeNetworkOutput(
      json['network'] == null
          ? null
          : Network.fromJson(json['network'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChangeNetworkOutputToJson(
        ChangeNetworkOutput instance) =>
    <String, dynamic>{
      'network': instance.network?.toJson(),
    };
