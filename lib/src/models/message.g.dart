// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      json['hash'] as String,
      json['src'] as String?,
      json['dst'] as String?,
      json['value'] as String,
      json['bounce'] as bool,
      json['bounced'] as bool,
      json['body'] as String?,
      json['bodyHash'] as String?,
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'hash': instance.hash,
      'src': instance.src,
      'dst': instance.dst,
      'value': instance.value,
      'bounce': instance.bounce,
      'bounced': instance.bounced,
      'body': instance.body,
      'bodyHash': instance.bodyHash,
    };
