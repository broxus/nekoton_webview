// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_external_message_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendExternalMessageInput _$SendExternalMessageInputFromJson(
        Map<String, dynamic> json) =>
    SendExternalMessageInput(
      json['publicKey'] as String,
      json['recipient'] as String,
      json['stateInit'] as String?,
      FunctionCall.fromJson(json['payload'] as Map<String, dynamic>),
      json['local'] as bool?,
      json['executorParams'] == null
          ? null
          : SendExternalMessageInputExecutorParams.fromJson(
              json['executorParams'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SendExternalMessageInputToJson(
        SendExternalMessageInput instance) =>
    <String, dynamic>{
      'publicKey': instance.publicKey,
      'recipient': instance.recipient,
      'stateInit': instance.stateInit,
      'payload': instance.payload.toJson(),
      'local': instance.local,
      'executorParams': instance.executorParams?.toJson(),
    };
