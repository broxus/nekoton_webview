// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_state_changed_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContractStateChangedEvent _$ContractStateChangedEventFromJson(
        Map<String, dynamic> json) =>
    ContractStateChangedEvent(
      json['address'] as String,
      ContractState.fromJson(json['state'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContractStateChangedEventToJson(
        ContractStateChangedEvent instance) =>
    <String, dynamic>{
      'address': instance.address,
      'state': instance.state.toJson(),
    };
