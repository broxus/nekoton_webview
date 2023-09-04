// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_changed_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkChangedEvent _$NetworkChangedEventFromJson(Map<String, dynamic> json) =>
    NetworkChangedEvent(
      json['selectedConnection'] as String,
      json['networkId'] as num,
    );

Map<String, dynamic> _$NetworkChangedEventToJson(
        NetworkChangedEvent instance) =>
    <String, dynamic>{
      'selectedConnection': instance.selectedConnection,
      'networkId': instance.networkId,
    };
