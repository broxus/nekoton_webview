// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'execute_local_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExecuteLocalInput _$ExecuteLocalInputFromJson(Map<String, dynamic> json) =>
    ExecuteLocalInput(
      json['address'] as String,
      json['cachedState'] == null
          ? null
          : FullContractState.fromJson(
              json['cachedState'] as Map<String, dynamic>),
      json['stateInit'] as String?,
      json['payload'],
      json['messageHeader'] as Object,
      json['executorParams'] == null
          ? null
          : ExecuteLocalInputExecutorParams.fromJson(
              json['executorParams'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExecuteLocalInputToJson(ExecuteLocalInput instance) =>
    <String, dynamic>{
      'address': instance.address,
      'cachedState': instance.cachedState?.toJson(),
      'stateInit': instance.stateInit,
      'payload': instance.payload,
      'messageHeader': instance.messageHeader,
      'executorParams': instance.executorParams?.toJson(),
    };
