// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_network_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddNetworkOutput _$AddNetworkOutputFromJson(Map<String, dynamic> json) =>
    AddNetworkOutput(
      json['network'] == null
          ? null
          : Network.fromJson(json['network'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddNetworkOutputToJson(AddNetworkOutput instance) =>
    <String, dynamic>{
      'network': instance.network?.toJson(),
    };
