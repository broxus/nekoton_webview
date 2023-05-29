// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decrypt_data_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DecryptDataInput _$DecryptDataInputFromJson(Map<String, dynamic> json) =>
    DecryptDataInput(
      EncryptedData.fromJson(json['encryptedData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecryptDataInputToJson(DecryptDataInput instance) =>
    <String, dynamic>{
      'encryptedData': instance.encryptedData.toJson(),
    };
