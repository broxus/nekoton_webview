// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Network _$NetworkFromJson(Map<String, dynamic> json) => Network(
      json['name'] as String,
      NetworkDescription.fromJson(json['description'] as Map<String, dynamic>),
      json['connection'] as Object,
      NetworkConfig.fromJson(json['config'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NetworkToJson(Network instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description.toJson(),
      'connection': instance.connection,
      'config': instance.config.toJson(),
    };
