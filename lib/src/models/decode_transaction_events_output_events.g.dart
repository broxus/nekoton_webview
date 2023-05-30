// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decode_transaction_events_output_events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DecodeTransactionEventsOutputEvents
    _$DecodeTransactionEventsOutputEventsFromJson(Map<String, dynamic> json) =>
        DecodeTransactionEventsOutputEvents(
          json['event'] as String,
          json['data'] as Map<String, dynamic>,
        );

Map<String, dynamic> _$DecodeTransactionEventsOutputEventsToJson(
        DecodeTransactionEventsOutputEvents instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };
