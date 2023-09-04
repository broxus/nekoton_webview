// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContractState _$ContractStateFromJson(Map<String, dynamic> json) =>
    ContractState(
      json['balance'] as String,
      GenTimings.fromJson(json['genTimings'] as Map<String, dynamic>),
      json['lastTransactionId'] == null
          ? null
          : LastTransactionId.fromJson(
              json['lastTransactionId'] as Map<String, dynamic>),
      json['isDeployed'] as bool,
      json['codeHash'] as String?,
    );

Map<String, dynamic> _$ContractStateToJson(ContractState instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'genTimings': instance.genTimings.toJson(),
      'lastTransactionId': instance.lastTransactionId?.toJson(),
      'isDeployed': instance.isDeployed,
      'codeHash': instance.codeHash,
    };
