// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkDescription _$NetworkDescriptionFromJson(Map<String, dynamic> json) =>
    NetworkDescription(
      json['globalId'] as num,
      json['capabilities'] as String,
      json['signatureId'] as num?,
    );

Map<String, dynamic> _$NetworkDescriptionToJson(NetworkDescription instance) =>
    <String, dynamic>{
      'globalId': instance.globalId,
      'capabilities': instance.capabilities,
      'signatureId': instance.signatureId,
    };
