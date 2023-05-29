// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_permissions_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestPermissionsInput _$RequestPermissionsInputFromJson(
        Map<String, dynamic> json) =>
    RequestPermissionsInput(
      (json['permissions'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$RequestPermissionsInputToJson(
        RequestPermissionsInput instance) =>
    <String, dynamic>{
      'permissions': instance.permissions,
    };
