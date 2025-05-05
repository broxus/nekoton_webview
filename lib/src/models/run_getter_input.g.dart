// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'run_getter_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RunGetterInput _$RunGetterInputFromJson(Map<String, dynamic> json) =>
    RunGetterInput(
      json['address'] as String,
      json['cachedState'] == null
          ? null
          : FullContractState.fromJson(
              json['cachedState'] as Map<String, dynamic>),
      GetterCall.fromJson(json['getterCall'] as Map<String, dynamic>),
      json['withSignatureId'],
    );

Map<String, dynamic> _$RunGetterInputToJson(RunGetterInput instance) =>
    <String, dynamic>{
      'address': instance.address,
      'cachedState': instance.cachedState?.toJson(),
      'getterCall': instance.getterCall.toJson(),
      'withSignatureId': instance.withSignatureId,
    };
