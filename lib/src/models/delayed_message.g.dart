// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delayed_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DelayedMessage _$DelayedMessageFromJson(Map<String, dynamic> json) =>
    DelayedMessage(
      json['hash'] as String,
      json['account'] as String,
      json['expireAt'] as num,
    );

Map<String, dynamic> _$DelayedMessageToJson(DelayedMessage instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'account': instance.account,
      'expireAt': instance.expireAt,
    };
