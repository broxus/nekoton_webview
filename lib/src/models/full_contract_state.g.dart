// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'full_contract_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FullContractState _$FullContractStateFromJson(Map<String, dynamic> json) =>
    FullContractState(
      json['boc'] as String,
      json['balance'] as String,
      GenTimings.fromJson(json['genTimings'] as Map<String, dynamic>),
      json['lastTransactionId'] == null
          ? null
          : LastTransactionId.fromJson(
              json['lastTransactionId'] as Map<String, dynamic>),
      json['isDeployed'] as bool,
      json['codeHash'] as String?,
    );

Map<String, dynamic> _$FullContractStateToJson(FullContractState instance) =>
    <String, dynamic>{
      'boc': instance.boc,
      'balance': instance.balance,
      'genTimings': instance.genTimings.toJson(),
      'lastTransactionId': instance.lastTransactionId?.toJson(),
      'isDeployed': instance.isDeployed,
      'codeHash': instance.codeHash,
    };
