// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'run_local_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RunLocalInput _$RunLocalInputFromJson(Map<String, dynamic> json) =>
    RunLocalInput(
      json['address'] as String,
      json['cachedState'] == null
          ? null
          : FullContractState.fromJson(
              json['cachedState'] as Map<String, dynamic>),
      json['responsible'] as bool?,
      FunctionCall.fromJson(json['functionCall'] as Map<String, dynamic>),
      json['withSignatureId'],
      (json['libraries'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$RunLocalInputToJson(RunLocalInput instance) =>
    <String, dynamic>{
      'address': instance.address,
      'cachedState': instance.cachedState?.toJson(),
      'responsible': instance.responsible,
      'functionCall': instance.functionCall.toJson(),
      'withSignatureId': instance.withSignatureId,
      'libraries': instance.libraries,
    };
