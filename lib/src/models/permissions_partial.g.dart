// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permissions_partial.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PermissionsPartial _$PermissionsPartialFromJson(Map<String, dynamic> json) =>
    PermissionsPartial(
      json['basic'] as bool?,
      json['accountInteraction'] == null
          ? null
          : PermissionsAccountInteraction.fromJson(
              json['accountInteraction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PermissionsPartialToJson(PermissionsPartial instance) =>
    <String, dynamic>{
      'basic': instance.basic,
      'accountInteraction': instance.accountInteraction?.toJson(),
    };
