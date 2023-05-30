// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypt_data_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EncryptDataOutput _$EncryptDataOutputFromJson(Map<String, dynamic> json) =>
    EncryptDataOutput(
      (json['encryptedData'] as List<dynamic>)
          .map((e) => EncryptedData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EncryptDataOutputToJson(EncryptDataOutput instance) =>
    <String, dynamic>{
      'encryptedData': instance.encryptedData.map((e) => e.toJson()).toList(),
    };
