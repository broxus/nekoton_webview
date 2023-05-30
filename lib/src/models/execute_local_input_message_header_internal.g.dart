// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'execute_local_input_message_header_internal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExecuteLocalInputMessageHeaderInternal
    _$ExecuteLocalInputMessageHeaderInternalFromJson(
            Map<String, dynamic> json) =>
        ExecuteLocalInputMessageHeaderInternal(
          json['type'] as String,
          json['sender'] as String,
          BigInt.tryParse(json['amount'] as String),
          json['bounce'] as bool,
          json['bounced'] as bool?,
        );

Map<String, dynamic> _$ExecuteLocalInputMessageHeaderInternalToJson(
        ExecuteLocalInputMessageHeaderInternal instance) =>
    <String, dynamic>{
      'type': instance.type,
      'sender': instance.sender,
      'amount': ExecuteLocalInputMessageHeaderInternal._bigIntToString(
          instance.amount),
      'bounce': instance.bounce,
      'bounced': instance.bounced,
    };
