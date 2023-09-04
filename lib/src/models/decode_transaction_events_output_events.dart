import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'decode_transaction_events_output_events.g.dart';

@JsonSerializable()
class DecodeTransactionEventsOutputEvents {
  const DecodeTransactionEventsOutputEvents(this.event, this.data);

  final String event;
  final Map<String, Object?> data;

  factory DecodeTransactionEventsOutputEvents.fromJson(
          Map<String, dynamic> json) =>
      _$DecodeTransactionEventsOutputEventsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DecodeTransactionEventsOutputEventsToJson(this);
}
