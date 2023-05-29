// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) => Transaction(
      TransactionId.fromJson(json['id'] as Map<String, dynamic>),
      json['prevTransactionId'] == null
          ? null
          : TransactionId.fromJson(
              json['prevTransactionId'] as Map<String, dynamic>),
      json['createdAt'] as num,
      json['aborted'] as bool,
      json['exitCode'] as num?,
      json['resultCode'] as num?,
      json['origStatus'] as String,
      json['endStatus'] as String,
      json['totalFees'] as String,
      Message.fromJson(json['inMessage'] as Map<String, dynamic>),
      (json['outMessages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'prevTransactionId': instance.prevTransactionId?.toJson(),
      'createdAt': instance.createdAt,
      'aborted': instance.aborted,
      'exitCode': instance.exitCode,
      'resultCode': instance.resultCode,
      'origStatus': instance.origStatus,
      'endStatus': instance.endStatus,
      'totalFees': instance.totalFees,
      'inMessage': instance.inMessage.toJson(),
      'outMessages': instance.outMessages.map((e) => e.toJson()).toList(),
    };
