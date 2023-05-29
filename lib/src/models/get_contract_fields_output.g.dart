// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_contract_fields_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetContractFieldsOutput _$GetContractFieldsOutputFromJson(
        Map<String, dynamic> json) =>
    GetContractFieldsOutput(
      json['fields'] as Map<String, dynamic>?,
      json['state'] == null
          ? null
          : FullContractState.fromJson(json['state'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetContractFieldsOutputToJson(
        GetContractFieldsOutput instance) =>
    <String, dynamic>{
      'fields': instance.fields,
      'state': instance.state?.toJson(),
    };
