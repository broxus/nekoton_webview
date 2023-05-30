// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_external_message_delayed_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendExternalMessageDelayedOutput _$SendExternalMessageDelayedOutputFromJson(
        Map<String, dynamic> json) =>
    SendExternalMessageDelayedOutput(
      DelayedMessage.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SendExternalMessageDelayedOutputToJson(
        SendExternalMessageDelayedOutput instance) =>
    <String, dynamic>{
      'message': instance.message.toJson(),
    };
