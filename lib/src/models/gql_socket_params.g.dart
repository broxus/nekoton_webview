// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gql_socket_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GqlSocketParams _$GqlSocketParamsFromJson(Map<String, dynamic> json) =>
    GqlSocketParams(
      (json['endpoints'] as List<dynamic>).map((e) => e as String).toList(),
      json['latencyDetectionInterval'] as num,
      json['maxLatency'] as num,
      json['local'] as bool,
    );

Map<String, dynamic> _$GqlSocketParamsToJson(GqlSocketParams instance) =>
    <String, dynamic>{
      'endpoints': instance.endpoints,
      'latencyDetectionInterval': instance.latencyDetectionInterval,
      'maxLatency': instance.maxLatency,
      'local': instance.local,
    };
