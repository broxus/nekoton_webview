// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_external_message_input_executor_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendExternalMessageInputExecutorParams
    _$SendExternalMessageInputExecutorParamsFromJson(
            Map<String, dynamic> json) =>
        SendExternalMessageInputExecutorParams(
          json['disableSignatureCheck'] as bool?,
          json['overrideBalance'],
        );

Map<String, dynamic> _$SendExternalMessageInputExecutorParamsToJson(
        SendExternalMessageInputExecutorParams instance) =>
    <String, dynamic>{
      'disableSignatureCheck': instance.disableSignatureCheck,
      'overrideBalance': instance.overrideBalance,
    };
