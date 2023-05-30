// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_contract_fields_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetContractFieldsInput _$GetContractFieldsInputFromJson(
        Map<String, dynamic> json) =>
    GetContractFieldsInput(
      json['address'] as String,
      json['abi'] as String,
      json['cachedState'] == null
          ? null
          : FullContractState.fromJson(
              json['cachedState'] as Map<String, dynamic>),
      json['allowPartial'] as bool,
    );

Map<String, dynamic> _$GetContractFieldsInputToJson(
        GetContractFieldsInput instance) =>
    <String, dynamic>{
      'address': instance.address,
      'abi': instance.abi,
      'cachedState': instance.cachedState?.toJson(),
      'allowPartial': instance.allowPartial,
    };
