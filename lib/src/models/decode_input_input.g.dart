// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decode_input_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DecodeInputInput _$DecodeInputInputFromJson(Map<String, dynamic> json) =>
    DecodeInputInput(
      json['body'] as String,
      json['abi'] as String,
      json['method'] as Object,
      json['internal'] as bool,
    );

Map<String, dynamic> _$DecodeInputInputToJson(DecodeInputInput instance) =>
    <String, dynamic>{
      'body': instance.body,
      'abi': instance.abi,
      'method': instance.method,
      'internal': instance.internal,
    };
