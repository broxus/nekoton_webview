// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_transactions_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTransactionsOutput _$GetTransactionsOutputFromJson(
        Map<String, dynamic> json) =>
    GetTransactionsOutput(
      (json['transactions'] as List<dynamic>)
          .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['continuation'] == null
          ? null
          : TransactionId.fromJson(
              json['continuation'] as Map<String, dynamic>),
      json['info'] == null
          ? null
          : TransactionsBatchInfo.fromJson(
              json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetTransactionsOutputToJson(
        GetTransactionsOutput instance) =>
    <String, dynamic>{
      'transactions': instance.transactions.map((e) => e.toJson()).toList(),
      'continuation': instance.continuation?.toJson(),
      'info': instance.info?.toJson(),
    };
