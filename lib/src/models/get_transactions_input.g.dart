// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_transactions_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTransactionsInput _$GetTransactionsInputFromJson(
        Map<String, dynamic> json) =>
    GetTransactionsInput(
      json['address'] as String,
      json['continuation'] == null
          ? null
          : TransactionId.fromJson(
              json['continuation'] as Map<String, dynamic>),
      json['limit'] as num?,
    );

Map<String, dynamic> _$GetTransactionsInputToJson(
        GetTransactionsInput instance) =>
    <String, dynamic>{
      'address': instance.address,
      'continuation': instance.continuation?.toJson(),
      'limit': instance.limit,
    };
