// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getter_call.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetterCall _$GetterCallFromJson(Map<String, dynamic> json) => GetterCall(
      json['abi'] as String,
      json['getter'] as String,
      json['params'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$GetterCallToJson(GetterCall instance) =>
    <String, dynamic>{
      'abi': instance.abi,
      'getter': instance.getter,
      'params': instance.params,
    };
