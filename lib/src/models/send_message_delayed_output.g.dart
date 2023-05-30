// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_delayed_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendMessageDelayedOutput _$SendMessageDelayedOutputFromJson(
        Map<String, dynamic> json) =>
    SendMessageDelayedOutput(
      DelayedMessage.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SendMessageDelayedOutputToJson(
        SendMessageDelayedOutput instance) =>
    <String, dynamic>{
      'message': instance.message.toJson(),
    };
