// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jrpc_connection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JrpcConnection _$JrpcConnectionFromJson(Map<String, dynamic> json) =>
    JrpcConnection(
      json['type'] as String,
      JrpcSocketParams.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JrpcConnectionToJson(JrpcConnection instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data.toJson(),
    };
