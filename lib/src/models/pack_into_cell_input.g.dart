// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pack_into_cell_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PackIntoCellInput _$PackIntoCellInputFromJson(Map<String, dynamic> json) =>
    PackIntoCellInput(
      json['abiVersion'] as String?,
      (json['structure'] as List<dynamic>)
          .map((e) => AbiParam.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$PackIntoCellInputToJson(PackIntoCellInput instance) =>
    <String, dynamic>{
      'abiVersion': instance.abiVersion,
      'structure': instance.structure.map((e) => e.toJson()).toList(),
      'data': instance.data,
    };
