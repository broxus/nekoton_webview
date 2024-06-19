// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compute_storage_fee_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComputeStorageFeeInput _$ComputeStorageFeeInputFromJson(
        Map<String, dynamic> json) =>
    ComputeStorageFeeInput(
      FullContractState.fromJson(json['state'] as Map<String, dynamic>),
      json['masterchain'] as bool?,
      json['timestamp'] as num?,
    );

Map<String, dynamic> _$ComputeStorageFeeInputToJson(
        ComputeStorageFeeInput instance) =>
    <String, dynamic>{
      'state': instance.state.toJson(),
      'masterchain': instance.masterchain,
      'timestamp': instance.timestamp,
    };
