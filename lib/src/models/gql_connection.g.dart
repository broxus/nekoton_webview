// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gql_connection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GqlConnection _$GqlConnectionFromJson(Map<String, dynamic> json) =>
    GqlConnection(
      json['type'] as String,
      GqlSocketParams.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GqlConnectionToJson(GqlConnection instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data.toJson(),
    };
