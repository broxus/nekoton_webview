// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decode_transaction_events_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DecodeTransactionEventsOutput _$DecodeTransactionEventsOutputFromJson(
        Map<String, dynamic> json) =>
    DecodeTransactionEventsOutput(
      (json['events'] as List<dynamic>)
          .map((e) => DecodeTransactionEventsOutputEvents.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DecodeTransactionEventsOutputToJson(
        DecodeTransactionEventsOutput instance) =>
    <String, dynamic>{
      'events': instance.events.map((e) => e.toJson()).toList(),
    };
