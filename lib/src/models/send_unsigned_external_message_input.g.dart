// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_unsigned_external_message_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendUnsignedExternalMessageInput _$SendUnsignedExternalMessageInputFromJson(
        Map<String, dynamic> json) =>
    SendUnsignedExternalMessageInput(
      json['recipient'] as String,
      json['stateInit'] as String?,
      json['payload'],
      json['local'] as bool?,
      json['executorParams'] == null
          ? null
          : SendUnsignedExternalMessageInputExecutorParams.fromJson(
              json['executorParams'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SendUnsignedExternalMessageInputToJson(
        SendUnsignedExternalMessageInput instance) =>
    <String, dynamic>{
      'recipient': instance.recipient,
      'stateInit': instance.stateInit,
      'payload': instance.payload,
      'local': instance.local,
      'executorParams': instance.executorParams?.toJson(),
    };
