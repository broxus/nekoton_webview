// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_delayed_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendMessageDelayedInput _$SendMessageDelayedInputFromJson(
        Map<String, dynamic> json) =>
    SendMessageDelayedInput(
      json['sender'] as String,
      json['recipient'] as String,
      BigInt.tryParse(json['amount'] as String),
      json['bounce'] as bool,
      json['payload'] == null
          ? null
          : FunctionCall.fromJson(json['payload'] as Map<String, dynamic>),
      json['stateInit'] as String?,
      (json['ignoredComputePhaseCodes'] as List<dynamic>?)
          ?.map((e) => IgnoreTransactionTreeSimulationError.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      (json['ignoredActionPhaseCodes'] as List<dynamic>?)
          ?.map((e) => IgnoreTransactionTreeSimulationError.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SendMessageDelayedInputToJson(
        SendMessageDelayedInput instance) =>
    <String, dynamic>{
      'sender': instance.sender,
      'recipient': instance.recipient,
      'amount': SendMessageDelayedInput._bigIntToString(instance.amount),
      'bounce': instance.bounce,
      'payload': instance.payload?.toJson(),
      'stateInit': instance.stateInit,
      'ignoredComputePhaseCodes':
          instance.ignoredComputePhaseCodes?.map((e) => e.toJson()).toList(),
      'ignoredActionPhaseCodes':
          instance.ignoredActionPhaseCodes?.map((e) => e.toJson()).toList(),
    };
