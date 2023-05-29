// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_provider_state_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProviderStateOutput _$GetProviderStateOutputFromJson(
        Map<String, dynamic> json) =>
    GetProviderStateOutput(
      json['version'] as String,
      json['numericVersion'] as num,
      json['selectedConnection'] as String,
      json['networkId'] as num,
      (json['supportedPermissions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      PermissionsPartial.fromJson(json['permissions'] as Map<String, dynamic>),
      (json['subscriptions'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k, ContractUpdatesSubscription.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$GetProviderStateOutputToJson(
        GetProviderStateOutput instance) =>
    <String, dynamic>{
      'version': instance.version,
      'numericVersion': instance.numericVersion,
      'selectedConnection': instance.selectedConnection,
      'networkId': instance.networkId,
      'supportedPermissions': instance.supportedPermissions,
      'permissions': instance.permissions.toJson(),
      'subscriptions':
          instance.subscriptions.map((k, e) => MapEntry(k, e.toJson())),
    };
