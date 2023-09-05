// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_transaction_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LastTransactionId _$LastTransactionIdFromJson(Map<String, dynamic> json) =>
    LastTransactionId(
      json['isExact'] as bool,
      json['lt'] as String,
      json['hash'] as String?,
    );

Map<String, dynamic> _$LastTransactionIdToJson(LastTransactionId instance) =>
    <String, dynamic>{
      'isExact': instance.isExact,
      'lt': instance.lt,
      'hash': instance.hash,
    };
