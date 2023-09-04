// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_status_updated_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageStatusUpdatedEvent _$MessageStatusUpdatedEventFromJson(
        Map<String, dynamic> json) =>
    MessageStatusUpdatedEvent(
      json['address'] as String,
      json['hash'] as String,
      json['transaction'] == null
          ? null
          : Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MessageStatusUpdatedEventToJson(
        MessageStatusUpdatedEvent instance) =>
    <String, dynamic>{
      'address': instance.address,
      'hash': instance.hash,
      'transaction': instance.transaction?.toJson(),
    };
