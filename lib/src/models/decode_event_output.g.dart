// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decode_event_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DecodeEventOutput _$DecodeEventOutputFromJson(Map<String, dynamic> json) =>
    DecodeEventOutput(
      json['event'] as String,
      json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$DecodeEventOutputToJson(DecodeEventOutput instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };
