// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_accounts_by_code_hash_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAccountsByCodeHashOutput _$GetAccountsByCodeHashOutputFromJson(
        Map<String, dynamic> json) =>
    GetAccountsByCodeHashOutput(
      (json['accounts'] as List<dynamic>).map((e) => e as String).toList(),
      json['continuation'] as String?,
    );

Map<String, dynamic> _$GetAccountsByCodeHashOutputToJson(
        GetAccountsByCodeHashOutput instance) =>
    <String, dynamic>{
      'accounts': instance.accounts,
      'continuation': instance.continuation,
    };
