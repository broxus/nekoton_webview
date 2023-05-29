// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_data_raw_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignDataRawOutput _$SignDataRawOutputFromJson(Map<String, dynamic> json) =>
    SignDataRawOutput(
      json['signature'] as String,
      json['signatureHex'] as String,
      SignDataRawOutputSignatureParts.fromJson(
          json['signatureParts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignDataRawOutputToJson(SignDataRawOutput instance) =>
    <String, dynamic>{
      'signature': instance.signature,
      'signatureHex': instance.signatureHex,
      'signatureParts': instance.signatureParts.toJson(),
    };
