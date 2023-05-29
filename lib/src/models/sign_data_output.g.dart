// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_data_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignDataOutput _$SignDataOutputFromJson(Map<String, dynamic> json) =>
    SignDataOutput(
      json['dataHash'] as String,
      json['signature'] as String,
      json['signatureHex'] as String,
      SignDataOutputSignatureParts.fromJson(
          json['signatureParts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignDataOutputToJson(SignDataOutput instance) =>
    <String, dynamic>{
      'dataHash': instance.dataHash,
      'signature': instance.signature,
      'signatureHex': instance.signatureHex,
      'signatureParts': instance.signatureParts.toJson(),
    };
