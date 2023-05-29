// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendMessageOutput _$SendMessageOutputFromJson(Map<String, dynamic> json) =>
    SendMessageOutput(
      Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SendMessageOutputToJson(SendMessageOutput instance) =>
    <String, dynamic>{
      'transaction': instance.transaction.toJson(),
    };
