// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_updates_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContractUpdatesSubscription _$ContractUpdatesSubscriptionFromJson(
        Map<String, dynamic> json) =>
    ContractUpdatesSubscription(
      json['state'] as bool,
      json['transactions'] as bool,
    );

Map<String, dynamic> _$ContractUpdatesSubscriptionToJson(
        ContractUpdatesSubscription instance) =>
    <String, dynamic>{
      'state': instance.state,
      'transactions': instance.transactions,
    };
