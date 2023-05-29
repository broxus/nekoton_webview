// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_signature_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifySignatureInput _$VerifySignatureInputFromJson(
        Map<String, dynamic> json) =>
    VerifySignatureInput(
      json['publicKey'] as String,
      json['dataHash'] as String,
      json['signature'] as String,
      json['withSignatureId'],
    );

Map<String, dynamic> _$VerifySignatureInputToJson(
        VerifySignatureInput instance) =>
    <String, dynamic>{
      'publicKey': instance.publicKey,
      'dataHash': instance.dataHash,
      'signature': instance.signature,
      'withSignatureId': instance.withSignatureId,
    };
