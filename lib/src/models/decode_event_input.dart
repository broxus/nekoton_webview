import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'decode_event_input.g.dart';

@JsonSerializable()
class DecodeEventInput {
  const DecodeEventInput(this.body, this.abi, this.event);

  ///Base64 encoded message body BOC
  final String body;

  ///Contract ABI
  final String abi;

  ///Specific event from specified contract ABI.
  ///When an array of event names is passed it will try to decode until first successful
  ///> Note! If **`event`** param was provided as string, it will assume that message body contains
  ///> specified event and this method will either return output or throw an exception. If you just want
  ///> to **_try_** to decode specified event, use **`['event']`**, in that case it will return null
  ///> if message body doesn't contain requested event.
  final Object event;

  factory DecodeEventInput.fromJson(Map<String, dynamic> json) =>
      _$DecodeEventInputFromJson(json);

  Map<String, dynamic> toJson() => _$DecodeEventInputToJson(this);
}
