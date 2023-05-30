// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decode_event_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DecodeEventInput _$DecodeEventInputFromJson(Map<String, dynamic> json) =>
    DecodeEventInput(
      json['body'] as String,
      json['abi'] as String,
      json['event'] as Object,
    );

Map<String, dynamic> _$DecodeEventInputToJson(DecodeEventInput instance) =>
    <String, dynamic>{
      'body': instance.body,
      'abi': instance.abi,
      'event': instance.event,
    };
