// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_data_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignDataInput _$SignDataInputFromJson(Map<String, dynamic> json) =>
    SignDataInput(
      json['publicKey'] as String,
      json['data'] as String,
      json['withSignatureId'],
    );

Map<String, dynamic> _$SignDataInputToJson(SignDataInput instance) =>
    <String, dynamic>{
      'publicKey': instance.publicKey,
      'data': instance.data,
      'withSignatureId': instance.withSignatureId,
    };
