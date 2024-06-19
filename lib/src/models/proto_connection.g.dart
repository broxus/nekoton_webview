// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proto_connection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProtoConnection _$ProtoConnectionFromJson(Map<String, dynamic> json) =>
    ProtoConnection(
      json['type'] as String,
      json['data'],
    );

Map<String, dynamic> _$ProtoConnectionToJson(ProtoConnection instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
    };
