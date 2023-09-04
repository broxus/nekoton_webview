// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_found_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionsFoundEvent _$TransactionsFoundEventFromJson(
        Map<String, dynamic> json) =>
    TransactionsFoundEvent(
      json['address'] as String,
      (json['transactions'] as List<dynamic>)
          .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      TransactionsBatchInfo.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionsFoundEventToJson(
        TransactionsFoundEvent instance) =>
    <String, dynamic>{
      'address': instance.address,
      'transactions': instance.transactions.map((e) => e.toJson()).toList(),
      'info': instance.info.toJson(),
    };
