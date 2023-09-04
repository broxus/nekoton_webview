import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'decode_event_output.g.dart';

@JsonSerializable()
class DecodeEventOutput {
  const DecodeEventOutput(this.event, this.data);

  ///Decoded event name
  final String event;

  ///Decoded event data
  final Map<String, Object?> data;

  factory DecodeEventOutput.fromJson(Map<String, dynamic> json) =>
      _$DecodeEventOutputFromJson(json);

  Map<String, dynamic> toJson() => _$DecodeEventOutputToJson(this);
}
