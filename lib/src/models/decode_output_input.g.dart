// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decode_output_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DecodeOutputInput _$DecodeOutputInputFromJson(Map<String, dynamic> json) =>
    DecodeOutputInput(
      json['body'] as String,
      json['abi'] as String,
      json['method'] as Object,
    );

Map<String, dynamic> _$DecodeOutputInputToJson(DecodeOutputInput instance) =>
    <String, dynamic>{
      'body': instance.body,
      'abi': instance.abi,
      'method': instance.method,
    };
