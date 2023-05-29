// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decode_transaction_events_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DecodeTransactionEventsInput _$DecodeTransactionEventsInputFromJson(
        Map<String, dynamic> json) =>
    DecodeTransactionEventsInput(
      Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
      json['abi'] as String,
    );

Map<String, dynamic> _$DecodeTransactionEventsInputToJson(
        DecodeTransactionEventsInput instance) =>
    <String, dynamic>{
      'transaction': instance.transaction.toJson(),
      'abi': instance.abi,
    };
