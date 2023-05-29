// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_external_message_delayed_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendExternalMessageDelayedInput _$SendExternalMessageDelayedInputFromJson(
        Map<String, dynamic> json) =>
    SendExternalMessageDelayedInput(
      json['publicKey'] as String,
      json['recipient'] as String,
      json['stateInit'] as String?,
      FunctionCall.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SendExternalMessageDelayedInputToJson(
        SendExternalMessageDelayedInput instance) =>
    <String, dynamic>{
      'publicKey': instance.publicKey,
      'recipient': instance.recipient,
      'stateInit': instance.stateInit,
      'payload': instance.payload.toJson(),
    };
