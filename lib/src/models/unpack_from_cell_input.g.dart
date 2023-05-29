// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unpack_from_cell_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnpackFromCellInput _$UnpackFromCellInputFromJson(Map<String, dynamic> json) =>
    UnpackFromCellInput(
      json['abiVersion'] as String?,
      (json['structure'] as List<dynamic>)
          .map((e) => AbiParam.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['boc'] as String,
      json['allowPartial'] as bool,
    );

Map<String, dynamic> _$UnpackFromCellInputToJson(
        UnpackFromCellInput instance) =>
    <String, dynamic>{
      'abiVersion': instance.abiVersion,
      'structure': instance.structure.map((e) => e.toJson()).toList(),
      'boc': instance.boc,
      'allowPartial': instance.allowPartial,
    };
