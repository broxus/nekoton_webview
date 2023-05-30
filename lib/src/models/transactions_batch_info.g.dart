// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_batch_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionsBatchInfo _$TransactionsBatchInfoFromJson(
        Map<String, dynamic> json) =>
    TransactionsBatchInfo(
      json['minLt'] as String,
      json['maxLt'] as String,
      json['batchType'] as String,
    );

Map<String, dynamic> _$TransactionsBatchInfoToJson(
        TransactionsBatchInfo instance) =>
    <String, dynamic>{
      'minLt': instance.minLt,
      'maxLt': instance.maxLt,
      'batchType': instance.batchType,
    };
