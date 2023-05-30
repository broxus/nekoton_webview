// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'execute_local_input_message_header_external.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExecuteLocalInputMessageHeaderExternal
    _$ExecuteLocalInputMessageHeaderExternalFromJson(
            Map<String, dynamic> json) =>
        ExecuteLocalInputMessageHeaderExternal(
          json['type'] as String,
          json['publicKey'] as String,
          json['withoutSignature'] as bool?,
        );

Map<String, dynamic> _$ExecuteLocalInputMessageHeaderExternalToJson(
        ExecuteLocalInputMessageHeaderExternal instance) =>
    <String, dynamic>{
      'type': instance.type,
      'publicKey': instance.publicKey,
      'withoutSignature': instance.withoutSignature,
    };
