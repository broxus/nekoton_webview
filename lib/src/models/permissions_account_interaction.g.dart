// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permissions_account_interaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PermissionsAccountInteraction _$PermissionsAccountInteractionFromJson(
        Map<String, dynamic> json) =>
    PermissionsAccountInteraction(
      json['address'] as String,
      json['publicKey'] as String,
      json['contractType'] as String,
    );

Map<String, dynamic> _$PermissionsAccountInteractionToJson(
        PermissionsAccountInteraction instance) =>
    <String, dynamic>{
      'address': instance.address,
      'publicKey': instance.publicKey,
      'contractType': instance.contractType,
    };
