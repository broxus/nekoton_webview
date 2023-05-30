// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_full_contract_state_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFullContractStateOutput _$GetFullContractStateOutputFromJson(
        Map<String, dynamic> json) =>
    GetFullContractStateOutput(
      json['state'] == null
          ? null
          : FullContractState.fromJson(json['state'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetFullContractStateOutputToJson(
        GetFullContractStateOutput instance) =>
    <String, dynamic>{
      'state': instance.state?.toJson(),
    };
