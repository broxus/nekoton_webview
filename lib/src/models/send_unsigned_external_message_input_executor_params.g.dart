// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_unsigned_external_message_input_executor_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendUnsignedExternalMessageInputExecutorParams
    _$SendUnsignedExternalMessageInputExecutorParamsFromJson(
            Map<String, dynamic> json) =>
        SendUnsignedExternalMessageInputExecutorParams(
          json['disableSignatureCheck'] as bool?,
          json['overrideBalance'],
        );

Map<String, dynamic> _$SendUnsignedExternalMessageInputExecutorParamsToJson(
        SendUnsignedExternalMessageInputExecutorParams instance) =>
    <String, dynamic>{
      'disableSignatureCheck': instance.disableSignatureCheck,
      'overrideBalance': instance.overrideBalance,
    };
