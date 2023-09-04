// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permissions_changed_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PermissionsChangedEvent _$PermissionsChangedEventFromJson(
        Map<String, dynamic> json) =>
    PermissionsChangedEvent(
      PermissionsPartial.fromJson(json['permissions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PermissionsChangedEventToJson(
        PermissionsChangedEvent instance) =>
    <String, dynamic>{
      'permissions': instance.permissions.toJson(),
    };
