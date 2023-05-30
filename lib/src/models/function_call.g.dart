// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function_call.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FunctionCall _$FunctionCallFromJson(Map<String, dynamic> json) => FunctionCall(
      json['abi'] as String,
      json['method'] as String,
      json['params'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$FunctionCallToJson(FunctionCall instance) =>
    <String, dynamic>{
      'abi': instance.abi,
      'method': instance.method,
      'params': instance.params,
    };
