// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypt_data_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EncryptDataInput _$EncryptDataInputFromJson(Map<String, dynamic> json) =>
    EncryptDataInput(
      json['publicKey'] as String,
      (json['recipientPublicKeys'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      json['algorithm'] as String,
      json['data'] as String,
    );

Map<String, dynamic> _$EncryptDataInputToJson(EncryptDataInput instance) =>
    <String, dynamic>{
      'publicKey': instance.publicKey,
      'recipientPublicKeys': instance.recipientPublicKeys,
      'algorithm': instance.algorithm,
      'data': instance.data,
    };
