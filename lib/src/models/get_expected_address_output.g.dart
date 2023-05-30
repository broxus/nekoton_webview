// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_expected_address_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetExpectedAddressOutput _$GetExpectedAddressOutputFromJson(
        Map<String, dynamic> json) =>
    GetExpectedAddressOutput(
      json['address'] as String,
      json['stateInit'] as String,
      json['hash'] as String,
    );

Map<String, dynamic> _$GetExpectedAddressOutputToJson(
        GetExpectedAddressOutput instance) =>
    <String, dynamic>{
      'address': instance.address,
      'stateInit': instance.stateInit,
      'hash': instance.hash,
    };
