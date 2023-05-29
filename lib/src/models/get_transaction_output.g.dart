// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_transaction_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTransactionOutput _$GetTransactionOutputFromJson(
        Map<String, dynamic> json) =>
    GetTransactionOutput(
      json['transaction'] == null
          ? null
          : Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetTransactionOutputToJson(
        GetTransactionOutput instance) =>
    <String, dynamic>{
      'transaction': instance.transaction?.toJson(),
    };
