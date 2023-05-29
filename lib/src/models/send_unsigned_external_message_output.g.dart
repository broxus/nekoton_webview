// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_unsigned_external_message_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendUnsignedExternalMessageOutput _$SendUnsignedExternalMessageOutputFromJson(
        Map<String, dynamic> json) =>
    SendUnsignedExternalMessageOutput(
      Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
      json['output'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$SendUnsignedExternalMessageOutputToJson(
        SendUnsignedExternalMessageOutput instance) =>
    <String, dynamic>{
      'transaction': instance.transaction.toJson(),
      'output': instance.output,
    };
