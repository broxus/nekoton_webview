// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_expected_address_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetExpectedAddressInput _$GetExpectedAddressInputFromJson(
        Map<String, dynamic> json) =>
    GetExpectedAddressInput(
      json['tvc'] as String,
      json['abi'] as String,
      json['workchain'] as num?,
      json['publicKey'] as String?,
      json['initParams'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$GetExpectedAddressInputToJson(
        GetExpectedAddressInput instance) =>
    <String, dynamic>{
      'tvc': instance.tvc,
      'abi': instance.abi,
      'workchain': instance.workchain,
      'publicKey': instance.publicKey,
      'initParams': instance.initParams,
    };
