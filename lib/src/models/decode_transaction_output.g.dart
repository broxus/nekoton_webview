// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decode_transaction_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DecodeTransactionOutput _$DecodeTransactionOutputFromJson(
        Map<String, dynamic> json) =>
    DecodeTransactionOutput(
      json['method'] as String,
      json['input'] as Map<String, dynamic>,
      json['output'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$DecodeTransactionOutputToJson(
        DecodeTransactionOutput instance) =>
    <String, dynamic>{
      'method': instance.method,
      'input': instance.input,
      'output': instance.output,
    };
