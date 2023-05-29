// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionId _$TransactionIdFromJson(Map<String, dynamic> json) =>
    TransactionId(
      json['lt'] as String,
      json['hash'] as String,
    );

Map<String, dynamic> _$TransactionIdToJson(TransactionId instance) =>
    <String, dynamic>{
      'lt': instance.lt,
      'hash': instance.hash,
    };
