// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_transaction_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FindTransactionOutput _$FindTransactionOutputFromJson(
        Map<String, dynamic> json) =>
    FindTransactionOutput(
      json['transaction'] == null
          ? null
          : Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FindTransactionOutputToJson(
        FindTransactionOutput instance) =>
    <String, dynamic>{
      'transaction': instance.transaction?.toJson(),
    };
