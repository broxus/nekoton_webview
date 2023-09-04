import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'decode_transaction_events_output.g.dart';

@JsonSerializable()
class DecodeTransactionEventsOutput {
  const DecodeTransactionEventsOutput(this.events);

  ///Successfully decoded events
  final List<DecodeTransactionEventsOutputEvents> events;

  factory DecodeTransactionEventsOutput.fromJson(Map<String, dynamic> json) =>
      _$DecodeTransactionEventsOutputFromJson(json);

  Map<String, dynamic> toJson() => _$DecodeTransactionEventsOutputToJson(this);
}
