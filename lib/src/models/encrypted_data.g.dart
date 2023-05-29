// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EncryptedData _$EncryptedDataFromJson(Map<String, dynamic> json) =>
    EncryptedData(
      json['algorithm'] as String,
      json['sourcePublicKey'] as String,
      json['recipientPublicKey'] as String,
      json['data'] as String,
      json['nonce'] as String,
    );

Map<String, dynamic> _$EncryptedDataToJson(EncryptedData instance) =>
    <String, dynamic>{
      'algorithm': instance.algorithm,
      'sourcePublicKey': instance.sourcePublicKey,
      'recipientPublicKey': instance.recipientPublicKey,
      'data': instance.data,
      'nonce': instance.nonce,
    };
