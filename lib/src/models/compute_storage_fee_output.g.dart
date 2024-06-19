// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compute_storage_fee_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComputeStorageFeeOutput _$ComputeStorageFeeOutputFromJson(
        Map<String, dynamic> json) =>
    ComputeStorageFeeOutput(
      json['storageFee'] as String,
      json['storageFeeDebt'] as String?,
      json['accountStatus'] as String,
      json['freezeDueLimit'] as String,
      json['deleteDueLimit'] as String,
    );

Map<String, dynamic> _$ComputeStorageFeeOutputToJson(
        ComputeStorageFeeOutput instance) =>
    <String, dynamic>{
      'storageFee': instance.storageFee,
      'storageFeeDebt': instance.storageFeeDebt,
      'accountStatus': instance.accountStatus,
      'freezeDueLimit': instance.freezeDueLimit,
      'deleteDueLimit': instance.deleteDueLimit,
    };
