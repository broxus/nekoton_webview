// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscribe_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscribeInput _$SubscribeInputFromJson(Map<String, dynamic> json) =>
    SubscribeInput(
      json['address'] as String,
      ContractUpdatesSubscriptionPartial.fromJson(
          json['subscriptions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubscribeInputToJson(SubscribeInput instance) =>
    <String, dynamic>{
      'address': instance.address,
      'subscriptions': instance.subscriptions.toJson(),
    };
