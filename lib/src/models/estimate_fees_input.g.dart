// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estimate_fees_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EstimateFeesInput _$EstimateFeesInputFromJson(Map<String, dynamic> json) =>
    EstimateFeesInput(
      json['sender'] as String,
      json['recipient'] as String,
      BigInt.tryParse(json['amount'] as String),
      json['payload'] == null
          ? null
          : FunctionCall.fromJson(json['payload'] as Map<String, dynamic>),
      json['stateInit'] as String?,
    );

Map<String, dynamic> _$EstimateFeesInputToJson(EstimateFeesInput instance) =>
    <String, dynamic>{
      'sender': instance.sender,
      'recipient': instance.recipient,
      'amount': EstimateFeesInput._bigIntToString(instance.amount),
      'payload': instance.payload?.toJson(),
      'stateInit': instance.stateInit,
    };
