// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abi_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbiParam _$AbiParamFromJson(Map<String, dynamic> json) => AbiParam(
      json['name'] as String,
      json['type'] as Object,
      (json['components'] as List<dynamic>?)
          ?.map((e) => AbiParam.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AbiParamToJson(AbiParam instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'components': instance.components?.map((e) => e.toJson()).toList(),
    };
