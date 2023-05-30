// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_asset_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddAssetInput _$AddAssetInputFromJson(Map<String, dynamic> json) =>
    AddAssetInput(
      json['account'] as String,
      json['type'] as String,
      json['params'] == null
          ? null
          : AssetTypeParams.fromJson(json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddAssetInputToJson(AddAssetInput instance) =>
    <String, dynamic>{
      'account': instance.account,
      'type': instance.type,
      'params': instance.params?.toJson(),
    };
