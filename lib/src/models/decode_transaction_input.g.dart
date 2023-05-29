// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decode_transaction_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DecodeTransactionInput _$DecodeTransactionInputFromJson(
        Map<String, dynamic> json) =>
    DecodeTransactionInput(
      Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
      json['abi'] as String,
      json['method'] as Object,
    );

Map<String, dynamic> _$DecodeTransactionInputToJson(
        DecodeTransactionInput instance) =>
    <String, dynamic>{
      'transaction': instance.transaction.toJson(),
      'abi': instance.abi,
      'method': instance.method,
    };
