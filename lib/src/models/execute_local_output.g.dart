// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'execute_local_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExecuteLocalOutput _$ExecuteLocalOutputFromJson(Map<String, dynamic> json) =>
    ExecuteLocalOutput(
      Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
      json['newState'] == null
          ? null
          : FullContractState.fromJson(
              json['newState'] as Map<String, dynamic>),
      json['output'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ExecuteLocalOutputToJson(ExecuteLocalOutput instance) =>
    <String, dynamic>{
      'transaction': instance.transaction.toJson(),
      'newState': instance.newState?.toJson(),
      'output': instance.output,
    };
