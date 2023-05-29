// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_data_raw_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignDataRawInput _$SignDataRawInputFromJson(Map<String, dynamic> json) =>
    SignDataRawInput(
      json['publicKey'] as String,
      json['data'] as String,
      json['withSignatureId'],
    );

Map<String, dynamic> _$SignDataRawInputToJson(SignDataRawInput instance) =>
    <String, dynamic>{
      'publicKey': instance.publicKey,
      'data': instance.data,
      'withSignatureId': instance.withSignatureId,
    };
