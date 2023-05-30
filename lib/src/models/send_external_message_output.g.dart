// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_external_message_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendExternalMessageOutput _$SendExternalMessageOutputFromJson(
        Map<String, dynamic> json) =>
    SendExternalMessageOutput(
      Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
      json['output'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$SendExternalMessageOutputToJson(
        SendExternalMessageOutput instance) =>
    <String, dynamic>{
      'transaction': instance.transaction.toJson(),
      'output': instance.output,
    };
