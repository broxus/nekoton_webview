// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_accounts_by_code_hash_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAccountsByCodeHashInput _$GetAccountsByCodeHashInputFromJson(
        Map<String, dynamic> json) =>
    GetAccountsByCodeHashInput(
      json['codeHash'] as String,
      json['continuation'] as String?,
      json['limit'] as num?,
    );

Map<String, dynamic> _$GetAccountsByCodeHashInputToJson(
        GetAccountsByCodeHashInput instance) =>
    <String, dynamic>{
      'codeHash': instance.codeHash,
      'continuation': instance.continuation,
      'limit': instance.limit,
    };
