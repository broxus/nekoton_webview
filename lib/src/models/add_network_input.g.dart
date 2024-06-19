// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_network_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddNetworkInput _$AddNetworkInputFromJson(Map<String, dynamic> json) =>
    AddNetworkInput(
      AddNetwork.fromJson(json['network'] as Map<String, dynamic>),
      json['switchNetwork'] as bool?,
    );

Map<String, dynamic> _$AddNetworkInputToJson(AddNetworkInput instance) =>
    <String, dynamic>{
      'network': instance.network.toJson(),
      'switchNetwork': instance.switchNetwork,
    };
